import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscaCNPJCall {
  static Future<ApiCallResponse> call({
    String? cnpj = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaCNPJ',
      apiUrl: 'https://api.cnpjs.dev/v1/$cnpj',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? apirazao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.razao_social''',
      ));
  static String? apifantasia(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.nome_fantasia''',
      ));
  static String? apiendtipo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.endereco.tipo_logradouro''',
      ));
  static String? apiend(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco.logradouro''',
      ));
  static String? apinumero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco.numero''',
      ));
  static String? apicomplemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.endereco.complemento''',
      ));
  static String? apibairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco.bairro''',
      ));
  static String? apicep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco.cep''',
      ));
  static String? apiuf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco.uf''',
      ));
  static String? apicidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.endereco.municipio''',
      ));
  static String? apifone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.telefone1''',
      ));
  static String? apiemail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
