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
    String? token = '',
  }) =>
      'http://185.57.122.58:7777/customer';
  static Map<String, String> headers = {
    'Accept-Language': '[acceptLanguage]',
    'X-Auth-Token': '[token]',
    'applicationType': 'BP-V1.0',
  };
  static IsRegisteredCall isRegisteredCall = IsRegisteredCall();
  static SendOTPToCustomerCall sendOTPToCustomerCall = SendOTPToCustomerCall();
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
  static RegisterACustomerCall registerACustomerCall = RegisterACustomerCall();
  static ListCustomersCall listCustomersCall = ListCustomersCall();
}

class IsRegisteredCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    print('idNumber  $idNumber \n ');
    print('idType  $idType \n ');
    print('acceptLanguage  $acceptLanguage \n ');
    print('msgId  $msgId \n ');
    return ApiManager.instance.makeApiCall(
      callName: 'isRegistered',
      apiUrl: '$baseUrl/api​/v1​/isRegistered',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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
    String? token = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
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
        'X-Auth-Token': '$token',
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

class VerifyOTPCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? operationType = 'VERIFY_DESTINATION',
    String? destination = '',
    String? destinationType = 'MOBILE_NUMBER',
    String? otp = '',
    String? setConfirmed = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "idNumber": "$idNumber",
  "idType": "$idType",
  "operationType": "$operationType",
  "destination": "$destination",
  "destinationType": "$destinationType",
  "otp":"$otp",
  "setConfirmed":"$setConfirmed"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP',
      apiUrl: '$baseUrl/api/v1/verifyOtp',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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

class RegisterACustomerCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? nationalityCode = '',
    String? mobileNumber = '',
    String? emailAddress = '',
    String? firstName = '',
    String? middleName = '',
    String? thirdName = '',
    String? familyName = '',
    String? birthdate = '',
    String? cityCode = '',
    String? areaCode = '',
    String? address = '',
    String? firstNameAr = '',
    String? middleNameAr = '',
    String? thirdNameAr = '',
    String? familyNameAr = '',
    String? gender = '',
    String? motherNameAr = '',
    String? birthPlace = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "idNumber": "$idNumber",
  "idType": "$idType",
 "nationalityCode": "$nationalityCode",
"mobileNumber":"$mobileNumber" ,
"emailAddress":"$emailAddress" ,
"firstName":"$firstName" ,
"middleName": "$middleName",
"thirdName": "$thirdName",
"familyName":"$familyName" ,
"birthdate":"$birthdate" ,
"cityCode": "$cityCode",
"areaCode":"$areaCode" ,
"address":"$address" ,
"firstNameAr":"$firstNameAr",
"middleNameAr":"$middleNameAr",
"thirdNameAr":"$thirdNameAr",
"familyNameAr":"$familyNameAr",
"gender":"$gender",
"motherNameAr":"$motherNameAr",
"birthPlace":"$birthPlace"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register a customer',
      apiUrl: '$baseUrl/api/v1/register',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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

class ListCustomersCall {
  Future<ApiCallResponse> call({
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list customers',
      apiUrl: '$baseUrl/api/v1/list',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
        'applicationType': 'BP-V1.0',
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
