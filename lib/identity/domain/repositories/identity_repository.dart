import '../entities/identity_entity.dart';
import '../entities/node_entity.dart';
import '../entities/rhs_node_entity.dart';

abstract class IdentityRepository {
  Future<String> getPrivateKey({
    required String accessMessage,
    required String? secret,
  });

  Future<List<String>> getPublicKeys({required privateKey});

  Future<IdentityEntity> createIdentity({
    required String didIdentifier,
    required String privateKey,
    required List<String> authClaim,
  });

  Future<void> storeIdentity({required IdentityEntity identity});

  Future<void> removeIdentity(
      {required String did, required String privateKey});

  Future<IdentityEntity> getIdentity({required String did});

  Future<List<IdentityEntity>> getIdentities();

  Future<String> signMessage({
    required String privateKey,
    required String message,
  });

  Future<String> getDidIdentifier({
    required String privateKey,
    required String blockchain,
    required String network,
    required List<String> authClaim,
  });

  // RHS
  Future<Map<String, dynamic>> getNonRevProof(
      {required String identityState,
      required int nonce,
      required String baseUrl});

  Future<String> getState(
      {required String identifier, required String contractAddress});

  Future<String> convertIdToBigInt({required String id});

  Future<RhsNodeEntity> getStateRoots({required String url});

  Future<String> getChallenge({required String message});

  Future<NodeEntity> getAuthClaimNode({required List<String> children});

  Future<Map<String, dynamic>> getLatestState({
    required String did,
    required String privateKey,
  });

  Future<String> exportIdentity({
    required String did,
    required String privateKey,
  });

  Future<void> importIdentity({
    required String did,
    required String privateKey,
    required String encryptedDb,
  });
}
