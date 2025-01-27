import 'package:polygonid_flutter_sdk/common/mappers/from_mapper.dart';
import 'package:polygonid_flutter_sdk/proof/domain/entities/jwz/jwz_proof.dart';

/// FIXME: should this be in iden3comm part?
class JWZProofMapper extends FromMapper<Map<String, dynamic>, JWZProof> {
  @override
  JWZProof mapFrom(Map<String, dynamic> from) {
    return JWZProof.fromJson(from);
  }
}
