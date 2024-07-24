import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth  and Register  Group Code

class AuthAndRegisterGroup {
  static String getBaseUrl({
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) =>
      '192.168.30.11:1300/customer';
  static Map<String, String> headers = {
    'Accept-Language': '[acceptLanguage]',
    'X-Auth-Token': 'YWRtaW5ARlROLUhROkFkbWluQDEyMw==',
    'applicationType': 'BP-V1.0',
  };
  static IsRegisteredCall isRegisteredCall = IsRegisteredCall();
  static SendOTPToCustomerCall sendOTPToCustomerCall = SendOTPToCustomerCall();
}

class IsRegisteredCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'isRegistered',
      apiUrl: '$baseUrl/api​/v1​/isRegistered',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': 'YWRtaW5ARlROLUhROkFkbWluQDEyMw==',
        'applicationType': 'BP-V1.0',
      },
      params: {
        'msgId': msgId,
        'idNumber': idNumber,
        'idType': idType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendOTPToCustomerCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? operationType = 'VERIFY_DESTINATION',
    String? mobileNumber = '',
    String? destinationType = 'MOBILE_NUMBER',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "idNumber": "$idNumber",
  "idType": "$idType",
  "operationType": "$operationType",
  "destination": "$mobileNumber",
  "destinationType": "$destinationType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP to customer',
      apiUrl: '$baseUrl/api/v1/sendOtp',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': 'YWRtaW5ARlROLUhROkFkbWluQDEyMw==',
        'applicationType': 'BP-V1.0',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Auth  and Register  Group Code

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
