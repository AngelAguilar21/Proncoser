import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BusquedaEmpresaCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BusquedaEmpresa',
      apiUrl:
          'https://aveagodidvwahldyhxrj.supabase.co/rest/v1/vista_cliente_empresa?or=(razon_social.ilike.*$search*,ruc.ilike.*$search*,representante.ilike.*$search*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF2ZWFnb2RpZHZ3YWhsZHloeHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEzMzYwMTEsImV4cCI6MjA0NjkxMjAxMX0.yXP26C5_SGvjTwFCE-2muLHMIIRD8QdRF6SCLovGihM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BusquedadPersonaCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BusquedadPersona',
      apiUrl:
          'https://aveagodidvwahldyhxrj.supabase.co/rest/v1/vista_cliente_persona?or=(nombre.ilike.*$search*,apellido.ilike.*$search*,dni.ilike.*$search*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF2ZWFnb2RpZHZ3YWhsZHloeHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEzMzYwMTEsImV4cCI6MjA0NjkxMjAxMX0.yXP26C5_SGvjTwFCE-2muLHMIIRD8QdRF6SCLovGihM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BusquedaMaquinariaCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BusquedaMaquinaria',
      apiUrl:
          'https://aveagodidvwahldyhxrj.supabase.co/rest/v1/vista_maquinaria?or=(modelo.ilike.*$search*,placa.ilike.*$search*,descripcion.ilike.*$search*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF2ZWFnb2RpZHZ3YWhsZHloeHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEzMzYwMTEsImV4cCI6MjA0NjkxMjAxMX0.yXP26C5_SGvjTwFCE-2muLHMIIRD8QdRF6SCLovGihM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BusquedaPersonalCall {
  static Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BusquedaPersonal',
      apiUrl:
          'https://aveagodidvwahldyhxrj.supabase.co/rest/v1/vista_personalmejor?or=(nombre.ilike.*$search*,apellido.ilike.*$search*,rol.ilike.*$search*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF2ZWFnb2RpZHZ3YWhsZHloeHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEzMzYwMTEsImV4cCI6MjA0NjkxMjAxMX0.yXP26C5_SGvjTwFCE-2muLHMIIRD8QdRF6SCLovGihM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReporteDiarioCall {
  static Future<ApiCallResponse> call({
    int? search,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ReporteDiario',
      apiUrl:
          'https://aveagodidvwahldyhxrj.supabase.co/rest/v1/detalle_plan?id_planificacion=eq.$search&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF2ZWFnb2RpZHZ3YWhsZHloeHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEzMzYwMTEsImV4cCI6MjA0NjkxMjAxMX0.yXP26C5_SGvjTwFCE-2muLHMIIRD8QdRF6SCLovGihM',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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
