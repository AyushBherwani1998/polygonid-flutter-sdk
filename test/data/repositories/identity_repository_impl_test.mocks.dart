// Mocks generated by Mockito 5.3.0 from annotations
// in polygonid_flutter_sdk/test/data/repositories/identity_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i12;
import 'dart:typed_data' as _i13;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/common/domain/entities/filter_entity.dart'
    as _i25;
import 'package:polygonid_flutter_sdk/credential/data/data_sources/storage_claim_data_source.dart'
    as _i27;
import 'package:polygonid_flutter_sdk/credential/data/dtos/claim_dto.dart'
    as _i7;
import 'package:polygonid_flutter_sdk/credential/data/dtos/credential_dto.dart'
    as _i36;
import 'package:polygonid_flutter_sdk/credential/data/mappers/claim_mapper.dart'
    as _i28;
import 'package:polygonid_flutter_sdk/credential/data/mappers/filters_mapper.dart'
    as _i29;
import 'package:polygonid_flutter_sdk/credential/domain/entities/claim_entity.dart'
    as _i6;
import 'package:polygonid_flutter_sdk/iden3comm/data/dtos/request/auth/auth_request.dart'
    as _i5;
import 'package:polygonid_flutter_sdk/iden3comm/data/dtos/request/auth/proof_scope_request.dart'
    as _i24;
import 'package:polygonid_flutter_sdk/iden3comm/data/dtos/request/auth/proof_scope_rules_query_request.dart'
    as _i26;
import 'package:polygonid_flutter_sdk/iden3comm/data/dtos/response/auth/auth_response.dart'
    as _i34;
import 'package:polygonid_flutter_sdk/identity/data/data_sources/jwz_data_source.dart'
    as _i18;
import 'package:polygonid_flutter_sdk/identity/data/data_sources/lib_identity_data_source.dart'
    as _i14;
import 'package:polygonid_flutter_sdk/identity/data/data_sources/storage_identity_data_source.dart'
    as _i16;
import 'package:polygonid_flutter_sdk/identity/data/data_sources/storage_key_value_data_source.dart'
    as _i17;
import 'package:polygonid_flutter_sdk/identity/data/data_sources/wallet_data_source.dart'
    as _i11;
import 'package:polygonid_flutter_sdk/identity/data/dtos/identity_dto.dart'
    as _i3;
import 'package:polygonid_flutter_sdk/identity/data/mappers/auth_request_mapper.dart'
    as _i22;
import 'package:polygonid_flutter_sdk/identity/data/mappers/auth_response_mapper.dart'
    as _i33;
import 'package:polygonid_flutter_sdk/identity/data/mappers/hex_mapper.dart'
    as _i19;
import 'package:polygonid_flutter_sdk/identity/data/mappers/identity_dto_mapper.dart'
    as _i21;
import 'package:polygonid_flutter_sdk/identity/data/mappers/private_key_mapper.dart'
    as _i20;
import 'package:polygonid_flutter_sdk/identity/domain/entities/identity_entity.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/identity/domain/repositories/smt_storage_repository.dart'
    as _i15;
import 'package:polygonid_flutter_sdk/identity/libs/bjj/privadoid_wallet.dart'
    as _i2;
import 'package:polygonid_flutter_sdk/identity/libs/smt/hash.dart' as _i10;
import 'package:polygonid_flutter_sdk/identity/libs/smt/node.dart' as _i9;
import 'package:polygonid_flutter_sdk/proof_generation/data/data_sources/atomic_query_inputs_data_source.dart'
    as _i35;
import 'package:polygonid_flutter_sdk/proof_generation/data/data_sources/local_files_data_source.dart'
    as _i37;
import 'package:polygonid_flutter_sdk/proof_generation/data/data_sources/proof_scope_data_source.dart'
    as _i23;
import 'package:polygonid_flutter_sdk/proof_generation/data/data_sources/prover_lib_data_source.dart'
    as _i32;
import 'package:polygonid_flutter_sdk/proof_generation/data/data_sources/witness_data_source.dart'
    as _i30;
import 'package:polygonid_flutter_sdk/proof_generation/data/dtos/witness_param.dart'
    as _i31;
import 'package:sembast/sembast.dart' as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePrivadoIdWallet_0 extends _i1.SmartFake
    implements _i2.PrivadoIdWallet {
  _FakePrivadoIdWallet_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeIdentityDTO_1 extends _i1.SmartFake implements _i3.IdentityDTO {
  _FakeIdentityDTO_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeIdentityEntity_2 extends _i1.SmartFake
    implements _i4.IdentityEntity {
  _FakeIdentityEntity_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeAuthRequest_3 extends _i1.SmartFake implements _i5.AuthRequest {
  _FakeAuthRequest_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeClaimEntity_4 extends _i1.SmartFake implements _i6.ClaimEntity {
  _FakeClaimEntity_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeClaimDTO_5 extends _i1.SmartFake implements _i7.ClaimDTO {
  _FakeClaimDTO_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFilter_6 extends _i1.SmartFake implements _i8.Filter {
  _FakeFilter_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeNode_7 extends _i1.SmartFake implements _i9.Node {
  _FakeNode_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeHash_8 extends _i1.SmartFake implements _i10.Hash {
  _FakeHash_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [WalletDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockWalletDataSource extends _i1.Mock implements _i11.WalletDataSource {
  MockWalletDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i2.PrivadoIdWallet> createWallet({_i13.Uint8List? privateKey}) =>
      (super.noSuchMethod(
              Invocation.method(#createWallet, [], {#privateKey: privateKey}),
              returnValue: _i12.Future<_i2.PrivadoIdWallet>.value(
                  _FakePrivadoIdWallet_0(
                      this,
                      Invocation.method(
                          #createWallet, [], {#privateKey: privateKey}))))
          as _i12.Future<_i2.PrivadoIdWallet>);
  @override
  _i12.Future<String> signMessage(
          {_i13.Uint8List? privateKey, String? message}) =>
      (super.noSuchMethod(
          Invocation.method(
              #signMessage, [], {#privateKey: privateKey, #message: message}),
          returnValue: _i12.Future<String>.value('')) as _i12.Future<String>);
}

/// A class which mocks [LibIdentityDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLibIdentityDataSource extends _i1.Mock
    implements _i14.LibIdentityDataSource {
  MockLibIdentityDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<String> getIdentifier({String? pubX, String? pubY}) =>
      (super.noSuchMethod(
          Invocation.method(#getIdentifier, [], {#pubX: pubX, #pubY: pubY}),
          returnValue: _i12.Future<String>.value('')) as _i12.Future<String>);
  @override
  _i12.Future<String> getAuthClaim({String? pubX, String? pubY}) =>
      (super.noSuchMethod(
          Invocation.method(#getAuthClaim, [], {#pubX: pubX, #pubY: pubY}),
          returnValue: _i12.Future<String>.value('')) as _i12.Future<String>);
  @override
  _i12.Future<String> createSMT(
          _i15.SMTStorageRepository? smtStorageRepository) =>
      (super.noSuchMethod(Invocation.method(#createSMT, [smtStorageRepository]),
          returnValue: _i12.Future<String>.value('')) as _i12.Future<String>);
}

/// A class which mocks [StorageIdentityDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageIdentityDataSource extends _i1.Mock
    implements _i16.StorageIdentityDataSource {
  MockStorageIdentityDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i3.IdentityDTO> getIdentity({String? identifier}) =>
      (super.noSuchMethod(
          Invocation.method(#getIdentity, [], {#identifier: identifier}),
          returnValue: _i12.Future<_i3.IdentityDTO>.value(_FakeIdentityDTO_1(
              this,
              Invocation.method(
                  #getIdentity, [], {#identifier: identifier})))) as _i12
          .Future<_i3.IdentityDTO>);
  @override
  _i12.Future<void> storeIdentity(
          {String? identifier, _i3.IdentityDTO? identity}) =>
      (super.noSuchMethod(
              Invocation.method(#storeIdentity, [],
                  {#identifier: identifier, #identity: identity}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
  @override
  _i12.Future<void> storeIdentityTransact(
          {_i8.DatabaseClient? transaction,
          String? identifier,
          _i3.IdentityDTO? identity}) =>
      (super.noSuchMethod(
              Invocation.method(#storeIdentityTransact, [], {
                #transaction: transaction,
                #identifier: identifier,
                #identity: identity
              }),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
  @override
  _i12.Future<void> removeIdentity({String? identifier}) => (super.noSuchMethod(
          Invocation.method(#removeIdentity, [], {#identifier: identifier}),
          returnValue: _i12.Future<void>.value(),
          returnValueForMissingStub: _i12.Future<void>.value())
      as _i12.Future<void>);
  @override
  _i12.Future<void> removeIdentityTransact(
          {_i8.DatabaseClient? transaction, String? identifier}) =>
      (super.noSuchMethod(
              Invocation.method(#removeIdentityTransact, [],
                  {#transaction: transaction, #identifier: identifier}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
}

/// A class which mocks [StorageKeyValueDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageKeyValueDataSource extends _i1.Mock
    implements _i17.StorageKeyValueDataSource {
  MockStorageKeyValueDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<dynamic> get({String? key, _i8.DatabaseClient? database}) =>
      (super.noSuchMethod(
          Invocation.method(#get, [], {#key: key, #database: database}),
          returnValue: _i12.Future<dynamic>.value()) as _i12.Future<dynamic>);
  @override
  _i12.Future<void> store(
          {String? key, dynamic value, _i8.DatabaseClient? database}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #store, [], {#key: key, #value: value, #database: database}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
  @override
  _i12.Future<String?> remove({String? key, _i8.DatabaseClient? database}) =>
      (super.noSuchMethod(
          Invocation.method(#remove, [], {#key: key, #database: database}),
          returnValue: _i12.Future<String?>.value()) as _i12.Future<String?>);
}

/// A class which mocks [JWZDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockJWZDataSource extends _i1.Mock implements _i18.JWZDataSource {
  MockJWZDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<String> getAuthToken(
          {_i13.Uint8List? privateKey,
          String? authClaim,
          String? message,
          String? circuitId,
          _i13.Uint8List? datFile,
          _i13.Uint8List? zKeyFile}) =>
      (super.noSuchMethod(
          Invocation.method(#getAuthToken, [], {
            #privateKey: privateKey,
            #authClaim: authClaim,
            #message: message,
            #circuitId: circuitId,
            #datFile: datFile,
            #zKeyFile: zKeyFile
          }),
          returnValue: _i12.Future<String>.value('')) as _i12.Future<String>);
}

/// A class which mocks [HexMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockHexMapper extends _i1.Mock implements _i19.HexMapper {
  MockHexMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String mapFrom(_i13.Uint8List? from) =>
      (super.noSuchMethod(Invocation.method(#mapFrom, [from]), returnValue: '')
          as String);
  @override
  _i13.Uint8List mapTo(String? to) =>
      (super.noSuchMethod(Invocation.method(#mapTo, [to]),
          returnValue: _i13.Uint8List(0)) as _i13.Uint8List);
}

/// A class which mocks [PrivateKeyMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockPrivateKeyMapper extends _i1.Mock implements _i20.PrivateKeyMapper {
  MockPrivateKeyMapper() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [IdentityDTOMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockIdentityDTOMapper extends _i1.Mock implements _i21.IdentityDTOMapper {
  MockIdentityDTOMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.IdentityEntity mapFrom(_i3.IdentityDTO? from) => (super.noSuchMethod(
          Invocation.method(#mapFrom, [from]),
          returnValue:
              _FakeIdentityEntity_2(this, Invocation.method(#mapFrom, [from])))
      as _i4.IdentityEntity);
}

/// A class which mocks [AuthRequestMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRequestMapper extends _i1.Mock implements _i22.AuthRequestMapper {
  MockAuthRequestMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthRequest mapFrom(String? from) =>
      (super.noSuchMethod(Invocation.method(#mapFrom, [from]),
              returnValue:
                  _FakeAuthRequest_3(this, Invocation.method(#mapFrom, [from])))
          as _i5.AuthRequest);
}

/// A class which mocks [ProofScopeDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProofScopeDataSource extends _i1.Mock
    implements _i23.ProofScopeDataSource {
  MockProofScopeDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i24.ProofScopeRequest> filteredProofScopeRequestList(
          List<_i24.ProofScopeRequest>? proofScopeRequestList) =>
      (super.noSuchMethod(
              Invocation.method(
                  #filteredProofScopeRequestList, [proofScopeRequestList]),
              returnValue: <_i24.ProofScopeRequest>[])
          as List<_i24.ProofScopeRequest>);
  @override
  List<_i25.FilterEntity> proofScopeRulesQueryRequestFilters(
          _i26.ProofScopeRulesQueryRequest? proofScopeRulesQueryRequest) =>
      (super.noSuchMethod(
          Invocation.method(#proofScopeRulesQueryRequestFilters,
              [proofScopeRulesQueryRequest]),
          returnValue: <_i25.FilterEntity>[]) as List<_i25.FilterEntity>);
}

/// A class which mocks [StorageClaimDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockStorageClaimDataSource extends _i1.Mock
    implements _i27.StorageClaimDataSource {
  MockStorageClaimDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<void> storeClaims({List<_i7.ClaimDTO>? claims}) => (super
          .noSuchMethod(Invocation.method(#storeClaims, [], {#claims: claims}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
      as _i12.Future<void>);
  @override
  _i12.Future<void> storeClaimsTransact(
          {_i8.DatabaseClient? transaction, List<_i7.ClaimDTO>? claims}) =>
      (super.noSuchMethod(
              Invocation.method(#storeClaimsTransact, [],
                  {#transaction: transaction, #claims: claims}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
  @override
  _i12.Future<void> removeClaims({List<String>? ids}) =>
      (super.noSuchMethod(Invocation.method(#removeClaims, [], {#ids: ids}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
  @override
  _i12.Future<void> removeClaimsTransact(
          {_i8.DatabaseClient? transaction, List<String>? ids}) =>
      (super.noSuchMethod(
              Invocation.method(#removeClaimsTransact, [],
                  {#transaction: transaction, #ids: ids}),
              returnValue: _i12.Future<void>.value(),
              returnValueForMissingStub: _i12.Future<void>.value())
          as _i12.Future<void>);
  @override
  _i12.Future<List<_i7.ClaimDTO>> getClaims({_i8.Filter? filter}) =>
      (super.noSuchMethod(Invocation.method(#getClaims, [], {#filter: filter}),
              returnValue:
                  _i12.Future<List<_i7.ClaimDTO>>.value(<_i7.ClaimDTO>[]))
          as _i12.Future<List<_i7.ClaimDTO>>);
}

/// A class which mocks [ClaimMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockClaimMapper extends _i1.Mock implements _i28.ClaimMapper {
  MockClaimMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.ClaimEntity mapFrom(_i7.ClaimDTO? from) =>
      (super.noSuchMethod(Invocation.method(#mapFrom, [from]),
              returnValue:
                  _FakeClaimEntity_4(this, Invocation.method(#mapFrom, [from])))
          as _i6.ClaimEntity);
  @override
  _i7.ClaimDTO mapTo(_i6.ClaimEntity? to) => (super.noSuchMethod(
          Invocation.method(#mapTo, [to]),
          returnValue: _FakeClaimDTO_5(this, Invocation.method(#mapTo, [to])))
      as _i7.ClaimDTO);
}

/// A class which mocks [FiltersMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockFiltersMapper extends _i1.Mock implements _i29.FiltersMapper {
  MockFiltersMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Filter mapTo(List<_i25.FilterEntity>? to) =>
      (super.noSuchMethod(Invocation.method(#mapTo, [to]),
              returnValue: _FakeFilter_6(this, Invocation.method(#mapTo, [to])))
          as _i8.Filter);
}

/// A class which mocks [WitnessDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockWitnessDataSource extends _i1.Mock implements _i30.WitnessDataSource {
  MockWitnessDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<_i13.Uint8List?> computeWitnessAuth(_i31.WitnessParam? param) =>
      (super.noSuchMethod(Invocation.method(#computeWitnessAuth, [param]),
              returnValue: _i12.Future<_i13.Uint8List?>.value())
          as _i12.Future<_i13.Uint8List?>);
  @override
  _i12.Future<_i13.Uint8List?> computeWitnessMtp(_i31.WitnessParam? param) =>
      (super.noSuchMethod(Invocation.method(#computeWitnessMtp, [param]),
              returnValue: _i12.Future<_i13.Uint8List?>.value())
          as _i12.Future<_i13.Uint8List?>);
  @override
  _i12.Future<_i13.Uint8List?> computeWitnessSig(_i31.WitnessParam? param) =>
      (super.noSuchMethod(Invocation.method(#computeWitnessSig, [param]),
              returnValue: _i12.Future<_i13.Uint8List?>.value())
          as _i12.Future<_i13.Uint8List?>);
}

/// A class which mocks [ProverLibDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProverLibDataSource extends _i1.Mock
    implements _i32.ProverLibDataSource {
  MockProverLibDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<Map<String, dynamic>?> prover(
          _i13.Uint8List? zKeyBytes, _i13.Uint8List? wtnsBytes) =>
      (super.noSuchMethod(Invocation.method(#prover, [zKeyBytes, wtnsBytes]),
              returnValue: _i12.Future<Map<String, dynamic>?>.value())
          as _i12.Future<Map<String, dynamic>?>);
}

/// A class which mocks [AuthResponseMapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthResponseMapper extends _i1.Mock
    implements _i33.AuthResponseMapper {
  MockAuthResponseMapper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String mapFrom(_i34.AuthResponse? from) =>
      (super.noSuchMethod(Invocation.method(#mapFrom, [from]), returnValue: '')
          as String);
}

/// A class which mocks [AtomicQueryInputsDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAtomicQueryInputsDataSource extends _i1.Mock
    implements _i35.AtomicQueryInputsDataSource {
  MockAtomicQueryInputsDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<String?> prepareAtomicQueryInputs(
          String? challenge,
          _i36.CredentialDTO? credential,
          String? circuitId,
          String? claimType,
          String? key,
          List<int>? values,
          int? operator,
          String? revStatusUrl,
          String? pubX,
          String? pubY,
          String? signature) =>
      (super.noSuchMethod(
          Invocation.method(#prepareAtomicQueryInputs, [
            challenge,
            credential,
            circuitId,
            claimType,
            key,
            values,
            operator,
            revStatusUrl,
            pubX,
            pubY,
            signature
          ]),
          returnValue: _i12.Future<String?>.value()) as _i12.Future<String?>);
}

/// A class which mocks [LocalFilesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalFilesDataSource extends _i1.Mock
    implements _i37.LocalFilesDataSource {
  MockLocalFilesDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i12.Future<List<_i13.Uint8List>> loadCircuitFiles(String? circuitId) =>
      (super.noSuchMethod(Invocation.method(#loadCircuitFiles, [circuitId]),
              returnValue:
                  _i12.Future<List<_i13.Uint8List>>.value(<_i13.Uint8List>[]))
          as _i12.Future<List<_i13.Uint8List>>);
}

/// A class which mocks [SMTStorageRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSMTStorageRepository extends _i1.Mock
    implements _i15.SMTStorageRepository {
  MockSMTStorageRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Node get(_i10.Hash? k) =>
      (super.noSuchMethod(Invocation.method(#get, [k]),
              returnValue: _FakeNode_7(this, Invocation.method(#get, [k])))
          as _i9.Node);
  @override
  void put(_i10.Hash? k, _i9.Node? n) =>
      super.noSuchMethod(Invocation.method(#put, [k, n]),
          returnValueForMissingStub: null);
  @override
  _i10.Hash getRoot() => (super.noSuchMethod(Invocation.method(#getRoot, []),
          returnValue: _FakeHash_8(this, Invocation.method(#getRoot, [])))
      as _i10.Hash);
  @override
  void setRoot(_i10.Hash? r) =>
      super.noSuchMethod(Invocation.method(#setRoot, [r]),
          returnValueForMissingStub: null);
}
