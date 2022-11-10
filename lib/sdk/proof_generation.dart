import 'package:injectable/injectable.dart';
import 'package:polygonid_flutter_sdk/credential/domain/entities/claim_entity.dart';
import 'package:polygonid_flutter_sdk/iden3comm/domain/entities/proof_request_entity.dart';
import 'package:polygonid_flutter_sdk/identity/libs/jwz/jwz_proof.dart';
import 'package:polygonid_flutter_sdk/proof_generation/domain/use_cases/generate_proof_use_case.dart';

import '../proof_generation/domain/entities/circuit_data_entity.dart';

abstract class PolygonIdSdkProof {
  Future<JWZProof> prove(
      {required String challenge,
      required String signatureString,
      required ClaimEntity authClaim,
      required CircuitDataEntity circuitData,
      required List<String> bjjPublicKey,
      required ProofQueryParamEntity queryParam});
}

@injectable
class ProofGeneration implements PolygonIdSdkProof {
  final GenerateProofUseCase _proveUseCase;

  ProofGeneration(
    this._proveUseCase,
  );

  Future<JWZProof> prove(
      {required String challenge,
      required String signatureString,
      required ClaimEntity authClaim,
      required CircuitDataEntity circuitData,
      required List<String> bjjPublicKey,
      required ProofQueryParamEntity queryParam}) {
    return _proveUseCase.execute(
        param: GenerateProofParam(challenge, signatureString, authClaim,
            circuitData, bjjPublicKey, queryParam));
  }
}
