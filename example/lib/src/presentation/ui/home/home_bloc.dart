import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polygonid_flutter_sdk/identity/domain/entities/private_identity_entity.dart';
import 'package:polygonid_flutter_sdk/identity/domain/exceptions/identity_exceptions.dart';
import 'package:polygonid_flutter_sdk/sdk/polygon_id_sdk.dart';
import 'package:polygonid_flutter_sdk_example/src/data/secure_storage.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/home/home_event.dart';
import 'package:polygonid_flutter_sdk_example/src/presentation/ui/home/home_state.dart';
import 'package:polygonid_flutter_sdk_example/utils/custom_strings.dart';
import 'package:polygonid_flutter_sdk_example/utils/secure_storage_keys.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PolygonIdSdk _polygonIdSdk;

  HomeBloc(this._polygonIdSdk) : super(const HomeState.initial()) {
    on<CreateIdentityHomeEvent>(_createIdentity);
    on<GetIdentifierHomeEvent>(_getIdentifier);
    on<RemoveIdentityHomeEvent>(_removeIdentity);
  }

  ///
  Future<void> _getIdentifier(
      GetIdentifierHomeEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const HomeState.error(message: "no private key found"));
      return;
    }
    String? identifier =
        await _polygonIdSdk.identity.getIdentifier(privateKey: privateKey);
    emit(HomeState.loaded(identifier: identifier));

    if (identifier != null) {
      String state = await _polygonIdSdk.identity.getState(identifier);
      debugPrint("state: $state");
    }
  }

  ///
  Future<void> _createIdentity(
      CreateIdentityHomeEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    try {
      PrivateIdentityEntity identity =
          await _polygonIdSdk.identity.createIdentity();
      await SecureStorage.write(
          key: SecureStorageKeys.privateKey, value: identity.privateKey);
      emit(HomeState.loaded(identifier: identity.identifier));
    } on IdentityException catch (identityException) {
      emit(HomeState.error(message: identityException.error));
    } catch (_) {
      emit(const HomeState.error(message: CustomStrings.genericError));
    }
  }

  ///
  Future<void> _removeIdentity(
      RemoveIdentityHomeEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    String? privateKey =
        await SecureStorage.read(key: SecureStorageKeys.privateKey);

    if (privateKey == null) {
      emit(const HomeState.error(message: "no private key found"));
      return;
    }

    String? identifier =
        await _polygonIdSdk.identity.getIdentifier(privateKey: privateKey);

    if (identifier == null) {
      emit(const HomeState.error(
          message: "cannot delete identity without identifier"));
      return;
    }

    try {
      await _polygonIdSdk.identity
          .removeIdentity(identifier: identifier, privateKey: privateKey);
      await SecureStorage.delete(key: SecureStorageKeys.privateKey);
      emit(const HomeState.loaded());
    } on IdentityException catch (identityException) {
      emit(HomeState.error(message: identityException.error));
    } catch (_) {
      emit(const HomeState.error(message: CustomStrings.genericError));
    }
  }
}
