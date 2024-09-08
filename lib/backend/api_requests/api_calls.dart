import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth  and Register  Group Code

class AuthAndRegisterGroup {
  static String getBaseUrl({
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) =>
      'http://185.57.122.58:7777';
  static Map<String, String> headers = {
    'Accept-Language': '[acceptLanguage]',
    'applicationType': 'BP-V1.0',
  };
  static IsRegisteredCall isRegisteredCall = IsRegisteredCall();
  static SendOTPToCustomerCall sendOTPToCustomerCall = SendOTPToCustomerCall();
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
  static SendToApprovalCall sendToApprovalCall = SendToApprovalCall();
  static RegisterACustomerCall registerACustomerCall = RegisterACustomerCall();
  static RegisterACustomerDeviceCall registerACustomerDeviceCall =
      RegisterACustomerDeviceCall();
  static ListCustomersCall listCustomersCall = ListCustomersCall();
  static LOOKUPsAPIsCall lOOKUPsAPIsCall = LOOKUPsAPIsCall();
  static UploadDocumentCall uploadDocumentCall = UploadDocumentCall();
  static LoginCall loginCall = LoginCall();
  static DeleteUploadedDocumentCall deleteUploadedDocumentCall =
      DeleteUploadedDocumentCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
}

class IsRegisteredCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? deviceSerial = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'isRegistered',
      apiUrl: '$baseUrl/customer/api/v1/isRegistered',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
      },
      params: {
        'msgId': msgId,
        'idNumber': idNumber,
        'idType': idType,
        'deviceSerial': deviceSerial,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? emailAddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].emailAddress''',
      ));
  String? mobileNumberPrefix(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.records[:].mobileNumberPrefix''',
      ));
  String? mobileNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].mobileNumber''',
      ));
  dynamic customerId(dynamic response) => getJsonField(
        response,
        r'''$.records[:].encodedId''',
      );
  dynamic isDeviceRegistered(dynamic response) => getJsonField(
        response,
        r'''$.records[:].isDeviceRegistered''',
      );
}

class SendOTPToCustomerCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? destination = '',
    String? destinationType = 'MOBILE_NUMBER',
    String? operationType = '',
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
  "destination": "$destination",
  "destinationType": "$destinationType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP to customer',
      apiUrl: '$baseUrl/customer/api/v1/sendOtp',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
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
  "destination": "$destination",
  "destinationType": "$destinationType",
  "otp":"$otp",
  "setConfirmed":"$setConfirmed"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP',
      apiUrl: '$baseUrl/customer/api/v1/verifyOtp',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
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

class SendToApprovalCall {
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

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "idNumber": "$idNumber",
  "idType": "$idType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send to Approval',
      apiUrl: '$baseUrl/customer/api/v1/sendToApproval',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
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
    String? motherNameEn = '',
    String? birthPlace = '',
    String? mobileNumberPrefix = '',
    String? hashedOTP = '',
    String? residencyType = '',
    String? profession = '',
    String? placeOfWork = '',
    String? monthlyIncomeUsd = '',
    String? isPEP = '',
    String? localPepFullName = '',
    String? latinPepFullName = '',
    String? relationshipWithPep = '',
    String? pepPosition = '',
    String? isUsPassportHolder = '',
    String? isTrueAccountBeneficiary = '',
    String? trueBeneficiaryName = '',
    String? relationShipWithTrueBeneficiary = '',
    String? serial = '',
    String? name = '',
    String? osName = '',
    String? osVersion = '',
    String? brandName = '',
    String? brandVersion = '',
    String? biometricSupported = '',
    String? password = '',
    String? pin = '',
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
  "nationalityCode": "$nationalityCode",
  "mobileNumber": "$mobileNumber",
  "mobileNumberPrefix": "$mobileNumberPrefix",
  "emailAddress": "$emailAddress",
  "firstName": "$firstName",
  "middleName": "$middleName",
  "thirdName": "$thirdName",
  "familyName": "$familyName",
  "birthdate": "$birthdate",
  "cityCode": "$cityCode",
  "areaCode": "$areaCode",
  "address": "$address",
  "firstNameAr": "$firstNameAr",
  "middleNameAr": "$middleNameAr",
  "thirdNameAr": "$thirdNameAr",
  "familyNameAr": "$familyNameAr",
  "gender": "$gender",
  "motherNameEn": "$motherNameEn",
  "birthPlace": "$birthPlace",
  "otp": "$hashedOTP",
  "mobileNumber2": "",
  "residencyType": "$residencyType",
  "profession": "$profession",
  "placeOfWork": "$placeOfWork",
  "monthlyIncomeUsd": "$monthlyIncomeUsd",
  "isPEP": "$isPEP",
  "localPepFullName": "$localPepFullName",
  "latinPepFullName": "$latinPepFullName",
  "relationshipWithPep": "$relationshipWithPep",
  "pepPosition": "$pepPosition",
  "isUsPassportHolder": "$isUsPassportHolder",
  "isTrueAccountBeneficiary": "$isTrueAccountBeneficiary",
  "trueBeneficiaryName": "$trueBeneficiaryName",
  "relationShipWithTrueBeneficiary": "$relationShipWithTrueBeneficiary",
  "deviceInfo": {
    "serial": "$serial",
    "name": "$name",
    "osName": "$osName",
    "osVersion": "$osVersion",
    "brandName": "$brandName",
    "brandVersion": "$brandVersion",
    "biometricSupported": "$biometricSupported"
  },
  "password": "$password",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register a customer',
      apiUrl: '$baseUrl/customer/api/v1/register',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
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

  dynamic customerId(dynamic response) => getJsonField(
        response,
        r'''$.records[:].encodedId''',
      );
}

class RegisterACustomerDeviceCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? familyNameAr = '',
    String? hashedOTP = '',
    String? serial = '',
    String? deviceName = '',
    String? osName = '',
    String? osVersion = '',
    String? brandName = '',
    String? brandVersion = '',
    String? biometricSupported = '',
    String? password = '',
    String? pin = '',
    String? emailAddress = '',
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
  "otp": "$hashedOTP",
  "emailAddress": "$emailAddress",
  "deviceInfo": {
    "serial": "$serial",
    "name": "$deviceName",
    "osName": "$osName",
    "osVersion": "$osVersion",
    "brandName": "$brandName",
    "brandVersion": "$brandVersion",
    "biometricSupported": "$biometricSupported"
  },
  "password": "$password",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register a customer Device',
      apiUrl: '$baseUrl/customer/api/v1/registerDevice',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
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
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list customers',
      apiUrl: '$baseUrl/customer/api/v1/list',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
      },
      params: {
        'msgId': msgId,
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

class LOOKUPsAPIsCall {
  Future<ApiCallResponse> call({
    String? countryId = 'Mzk2MA==',
    String? cityId = '',
    String? type = '',
    String? moduleType = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'LOOK UPs APIs',
      apiUrl: '$baseUrl/lookup/api/v1/list',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
      },
      params: {
        'countryId': countryId,
        'cityId': cityId,
        'type': type,
        'moduleType': moduleType,
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

class UploadDocumentCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
    String? documentTypeId = '',
    FFUploadedFile? file,
    String? forceUpload = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Upload Document',
      apiUrl: '$baseUrl/customer/api/v1/uploadDocument',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
      },
      params: {
        'customerId': customerId,
        'documentTypeId': documentTypeId,
        'file': file,
        'forceUpload': forceUpload,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? deviceSerial = '',
    String? mobileWithPrefix = '',
    String? password = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/customer/api/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'Device-Serial': '$deviceSerial',
        'authorization':
            'Basic \${base64Encode(utf8.encode($mobileWithPrefix:$password))}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
}

class DeleteUploadedDocumentCall {
  Future<ApiCallResponse> call({
    String? deleteURL = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Uploaded Document',
      apiUrl: '$baseUrl/$deleteURL',
      callType: ApiCallType.DELETE,
      headers: {
        'Accept-Language': '$acceptLanguage',
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

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? newPassword = '',
    String? otp = '',
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
  "newPassword": "$newPassword",
  "otp": "$otp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password ',
      apiUrl: '$baseUrl//api/v1/forgotPassword',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
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

/// Start Card Group Code

class CardGroup {
  static String getBaseUrl({
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) =>
      'http://185.57.122.58:7777';
  static Map<String, String> headers = {
    'Accept-Language': '[acceptLanguage]',
    'applicationType': 'BP-V1.0',
    'X-Auth-Token': '[token]',
  };
  static ListCardsCall listCardsCall = ListCardsCall();
  static GetCustomerBalancesCall getCustomerBalancesCall =
      GetCustomerBalancesCall();
  static GetCardAccountInfoCall getCardAccountInfoCall =
      GetCardAccountInfoCall();
  static ListCardTransactionsCall listCardTransactionsCall =
      ListCardTransactionsCall();
  static ChangeCardStatusCall changeCardStatusCall = ChangeCardStatusCall();
  static GetCardPINCall getCardPINCall = GetCardPINCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static ForgotDevicePinCall forgotDevicePinCall = ForgotDevicePinCall();
}

class ListCardsCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? cardToken = '',
    String? currencyCode = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'List Cards',
      apiUrl: '$baseUrl/customer/api/v1/cardList',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
      },
      params: {
        'msgId': msgId,
        'idNumber': idNumber,
        'cardToken': cardToken,
        'currencyCode': currencyCode,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic cardNumber(dynamic response) => getJsonField(
        response,
        r'''$.records[:].cardNumber''',
      );
  dynamic currencyCode(dynamic response) => getJsonField(
        response,
        r'''$.records[:].currencyCode''',
      );
  dynamic availableBalance(dynamic response) => getJsonField(
        response,
        r'''$.records[:].availableBalance''',
      );
  dynamic cardCvc(dynamic response) => getJsonField(
        response,
        r'''$.records[:].cardCvc''',
      );
  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.records[:].firstName''',
      );
  dynamic middleName(dynamic response) => getJsonField(
        response,
        r'''$.records[:].middleName''',
      );
  dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.records[:].lastName''',
      );
  dynamic nameOnCard(dynamic response) => getJsonField(
        response,
        r'''$.records[:].nameOnCard''',
      );
  dynamic expiryDate(dynamic response) => getJsonField(
        response,
        r'''$.records[:].expiryDate''',
      );
}

class GetCustomerBalancesCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? currencyCode = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Customer Balances',
      apiUrl: '$baseUrl/customer/api/v1/customerBalances',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
      },
      params: {
        'msgId': msgId,
        'idNumber': idNumber,
        'currencyCode': currencyCode,
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

class GetCardAccountInfoCall {
  Future<ApiCallResponse> call({
    String? cardToken = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Card Account Info',
      apiUrl: '$baseUrl/customer/api/v1/cardAccountInfo',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
      },
      params: {
        'msgId': msgId,
        'cardToken': cardToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic cardBalance(dynamic response) => getJsonField(
        response,
        r'''$.records[:].availableBalance''',
      );
  dynamic currencyCode(dynamic response) => getJsonField(
        response,
        r'''$.records[:].currencyCode''',
      );
}

class ListCardTransactionsCall {
  Future<ApiCallResponse> call({
    String? cardToken = '',
    String? dateFrom = '',
    String? dateTo = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'List Card Transactions',
      apiUrl: '$baseUrl/customer/api/v1/cardTransList',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
      },
      params: {
        'msgId': msgId,
        'cardToken': cardToken,
        'dateFrom': dateFrom,
        'dateTo': dateTo,
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

class ChangeCardStatusCall {
  Future<ApiCallResponse> call({
    String? cardToken = '',
    String? status = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "cardToken": "$cardToken",
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Card Status',
      apiUrl: '$baseUrl/customer/api/v1/cardChangeStatus',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
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

class GetCardPINCall {
  Future<ApiCallResponse> call({
    String? cardToken = '',
    String? cardCvv2 = '222',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Card PIN',
      apiUrl: '$baseUrl/customer/api/v1/cardPin',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
      },
      params: {
        'msgId': msgId,
        'cardToken': cardToken,
        'cardCvv2': cardCvv2,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic pinBlock(dynamic response) => getJsonField(
        response,
        r'''$.records[:].pinBlock''',
      );
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? oldPassword = '',
    String? newPassword = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "oldPassword": "$oldPassword",
  "newPassword": "$newPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Change Password',
      apiUrl: '$baseUrl/customer/api/v1/changePassword',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
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

class ForgotDevicePinCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? birthDate = '',
    String? password = '',
    String? newPin = '',
    String? otp = '',
    String? msgId = '',
    String? token = '',
    String? acceptLanguage = 'EN',
  }) async {
    final baseUrl = CardGroup.getBaseUrl(
      msgId: msgId,
      token: token,
      acceptLanguage: acceptLanguage,
    );

    final ffApiRequestBody = '''
{
  "msgId": "$msgId",
  "idNumber": "$idNumber",
  "idType": "$idType",
  "birthDate": "$birthDate",
  "password": "$password",
  "newPin": "$newPin",
  "otp": "$otp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Device Pin',
      apiUrl: '$baseUrl/customer/api/v1/forgotPin',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'applicationType': 'BP-V1.0',
        'X-Auth-Token': '$token',
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

/// End Card Group Code

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
  if (item is DocumentReference) {
    return item.path;
  }
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
