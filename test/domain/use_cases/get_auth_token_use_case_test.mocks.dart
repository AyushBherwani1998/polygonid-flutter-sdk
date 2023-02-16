// Mocks generated by Mockito 5.3.2 from annotations
// in polygonid_flutter_sdk/test/domain/use_cases/get_auth_token_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:typed_data' as _i9;

import 'package:mockito/mockito.dart' as _i1;
import 'package:polygonid_flutter_sdk/iden3comm/domain/use_cases/get_auth_challenge_use_case.dart'
    as _i7;
import 'package:polygonid_flutter_sdk/iden3comm/domain/use_cases/get_auth_inputs_use_case.dart'
    as _i8;
import 'package:polygonid_flutter_sdk/proof/domain/entities/circuit_data_entity.dart'
    as _i2;
import 'package:polygonid_flutter_sdk/proof/domain/entities/jwz/jwz_proof.dart'
    as _i3;
import 'package:polygonid_flutter_sdk/proof/domain/use_cases/get_jwz_use_case.dart'
    as _i6;
import 'package:polygonid_flutter_sdk/proof/domain/use_cases/load_circuit_use_case.dart'
    as _i4;
import 'package:polygonid_flutter_sdk/proof/domain/use_cases/prove_use_case.dart'
    as _i10;

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

class _FakeCircuitDataEntity_0 extends _i1.SmartFake
    implements _i2.CircuitDataEntity {
  _FakeCircuitDataEntity_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJWZProof_1 extends _i1.SmartFake implements _i3.JWZProof {
  _FakeJWZProof_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LoadCircuitUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoadCircuitUseCase extends _i1.Mock
    implements _i4.LoadCircuitUseCase {
  MockLoadCircuitUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.CircuitDataEntity> execute({required String? param}) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#param: param},
        ),
        returnValue:
            _i5.Future<_i2.CircuitDataEntity>.value(_FakeCircuitDataEntity_0(
          this,
          Invocation.method(
            #execute,
            [],
            {#param: param},
          ),
        )),
      ) as _i5.Future<_i2.CircuitDataEntity>);
}

/// A class which mocks [GetJWZUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetJWZUseCase extends _i1.Mock implements _i6.GetJWZUseCase {
  MockGetJWZUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<String> execute({required _i6.GetJWZParam? param}) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#param: param},
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
}

/// A class which mocks [GetAuthChallengeUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAuthChallengeUseCase extends _i1.Mock
    implements _i7.GetAuthChallengeUseCase {
  MockGetAuthChallengeUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<String> execute({required String? param}) => (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#param: param},
        ),
        returnValue: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
}

/// A class which mocks [GetAuthInputsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAuthInputsUseCase extends _i1.Mock
    implements _i8.GetAuthInputsUseCase {
  MockGetAuthInputsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i9.Uint8List> execute({required _i8.GetAuthInputsParam? param}) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#param: param},
        ),
        returnValue: _i5.Future<_i9.Uint8List>.value(_i9.Uint8List(0)),
      ) as _i5.Future<_i9.Uint8List>);
}

/// A class which mocks [ProveUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockProveUseCase extends _i1.Mock implements _i10.ProveUseCase {
  MockProveUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.JWZProof> execute({required _i10.ProveParam? param}) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
          {#param: param},
        ),
        returnValue: _i5.Future<_i3.JWZProof>.value(_FakeJWZProof_1(
          this,
          Invocation.method(
            #execute,
            [],
            {#param: param},
          ),
        )),
      ) as _i5.Future<_i3.JWZProof>);
}
