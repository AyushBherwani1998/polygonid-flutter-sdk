/*
{
  "type": "https://iden3-communication.io/authorization-response/v1",
  "data": {
    "scope": [
      {
        "type": "zeroknowledge",
        "circuit_id": "auth",
        "pub_signals": [
          "383481829333688262229762912714748186426235428103586432827469388069546950656",
          "12345"
        ],
        "proof_data": {
          "pi_a": [
            "14146277947056297753840642586002829867111675410988595047766001252156753371528",
            "14571022849315211248046007113544986624773029852663683182064313232057584750907",
            "1"
          ],
          "pi_b": [
            [
              "16643510334478363316178974136322830670001098048711963846055396047727066595515",
              "10398230582752448515583571758866992012509398625081722188208617704185602394573"
            ],
            [
              "6754852150473185509183929580585027939167256175425095292505368999953776521762",
              "4988338043999536569468301597030911639875135237017470300699903062776921637682"
            ],
            [
              "1",
              "0"
            ]
          ],
          "pi_c": [
            "17016608018243685488662035612576776697709541343999980909476169114486580874935",
            "1344455328868272682523157740509602348889110849570014394831093852006878298645",
            "1"
          ],
          "protocol": "groth16"
        }
      }
    ]
  }
}

{
  "type": "https://iden3-communication.io/authorization-request/v1",
  "data": {
    "callbackURL": "https://verifier-v2.polygonid.me/api/callback",
    "audience": "1125GJqgw6YEsKFwj63GY87MMxPL9kwDKxPUiwMLNZ",
    "scope": [
      {
        "circuit_id": "auth",
        "rules": {
          "challenge": 664204
        }
      },
      {
        "circuit_id": "credentialAtomicQueryMTP",
        "type": "zeroknowledge",
        "rules": {
          "query": {
            "schema": {
              "type": "KYCAgeCredential",
              "url": "https://raw.githubusercontent.com/iden3/claim-schema-vocab/main/schemas/json-ld/kyc-v2.json-ld"
            },
            "allowedIssuers": "11VJCASgkkuEMvQJ7iKHqZtPbj1i51JpcqGpf5kMP",
            "challenge": 664204,
            "req": {
              "birthday": {
                "$lt": 20000101
              }
            }
          }
        }
      }
    ]
  }
}

{
  "type": "https://iden3-communication.io/authorization-request/v1",
  "data": {
    "callbackUrl": "https://auth-demo.idyllicvision.com/callback?id=27887",
    "audience": "1125GJqgw6YEsKFwj63GY87MMxPL9kwDKxPUiwMLNZ",
    "scope": [
      {
        "circuit_id": "auth",
        "type": "zeroknowledge",
        "rules": {
          "audience": "1125GJqgw6YEsKFwj63GY87MMxPL9kwDKxPUiwMLNZ",
          "challenge": 27887
        }
      }
    ]
  }
}



*/

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'proof_scope_rules_query_schema_request.dart';

class ProofScopeRulesQueryRequest {
  final List<String>? allowedIssuers;
  final int? challenge;
  final Map<String, dynamic>? req;
  final ProofScopeRulesQuerySchemaRequest? schema;

  ProofScopeRulesQueryRequest(
      {this.allowedIssuers, this.challenge, this.req, this.schema});

  /// Creates an instance from the given json
  ///
  /// @param [Map<String, dynamic>] json
  /// @returns [ProofScopeRulesQueryRequest]
  factory ProofScopeRulesQueryRequest.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      ProofScopeRulesQuerySchemaRequest? schema =
          ProofScopeRulesQuerySchemaRequest.fromJson(json['schema']);
      return ProofScopeRulesQueryRequest(
          allowedIssuers: List<String>.from(
              json['allowedIssuers'] ?? json['allowed_issuers']),
          challenge: json['challenge'],
          req: json['req'],
          schema: schema);
    } else {
      throw "something went wrong";
    }
  }

  Map<String, dynamic> toJson() => {
        'allowedIssuers': allowedIssuers,
        'challenge': challenge,
        'req': req,
        'schema': schema!.toJson()
      };

  @override
  String toString() =>
      "[ProofScopeRulesQueryRequest] {allowedIssuers: $allowedIssuers, challenge: $challenge, req: $req, schema: $schema}";

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProofScopeRulesQueryRequest &&
          runtimeType == other.runtimeType &&
          listEquals(allowedIssuers, other.allowedIssuers) &&
          challenge == other.challenge &&
          const DeepCollectionEquality().equals(req, other.req) &&
          schema == other.schema;

  @override
  int get hashCode => runtimeType.hashCode;
}