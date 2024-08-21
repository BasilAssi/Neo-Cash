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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) =>
      'http://185.57.122.58:7777';
  static Map<String, String> headers = {
    'Accept-Language': '[acceptLanguage]',
    'X-Auth-Token': '[token]',
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
}

class IsRegisteredCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? deviceSerial = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'isRegistered',
      apiUrl: '$baseUrl/customer/api/v1/isRegistered',
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
}

class SendOTPToCustomerCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? mobileNumber = '',
    String? destinationType = 'MOBILE_NUMBER',
    String? operationType = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
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
      apiUrl: '$baseUrl/customer/api/v1/sendOtp',
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
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
      apiUrl: '$baseUrl/customer/api/v1/verifyOtp',
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

class SendToApprovalCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
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
  "idType": "$idType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send to Approval',
      apiUrl: '$baseUrl/api/v1/sendToApproval',
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
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
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
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
  "otp": "$hashedOTP",
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list customers',
      apiUrl: '$baseUrl/customer/api/v1/list',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'LOOK UPs APIs',
      apiUrl: '$baseUrl/lookup/api/v1/list',
      callType: ApiCallType.GET,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Upload Document',
      apiUrl: '$baseUrl/api/v1/uploadDocument',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/customer/api/login',
      callType: ApiCallType.POST,
      headers: {
        'Accept-Language': '$acceptLanguage',
        'X-Auth-Token': '$token',
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
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZWUzBcL1VVQlMrTTBEUWtBd01pb2dLbWdnN0xZbnVaR1BwM0JtcWZReDlEQUVUSjZWekdRdWR0dDYyTUd3TUsxMnd3S2drSnY0Rlwvb2x1XC9BRkdGMjVadVwvWGV6cVB0VEpIWVJUTTUzM2UrODV6VHMzTXc1bVB3dUlrTnlcL1laenc2YmxzUDRIcmFjcG9cL01FRnZCSVJQNkNEZFFFREVxRVZFbkZ0QjVjbm1RRTBEZWFnUmdXdGcxOW8xbDIzQ2F5XC9MMkxqS0RsVFlHajF6YzdDcnVZS09GRGx5OHhcL1MxVFJlalZJQllPdjhrRDhhM1FORXdUVGQwQXNsMVlOdXpNR3BzZ2FuWUpyam1IalhObUFSQlRtQVp0cCtramlQSDJMWlJRd0FUUmhpOGNrbFVDXC9rQm1Pd2tHd2FXdmF5aVlFVUFWenpEOTBsMkE1V29BVTJkNGpSTmgxVHdHcndCbzIwdlJ4N1N1eVZLWmFnT3c3bTJUYXEyWE1kZjFKMlcyN0IyTEJxYzZCXC9OZlwvaCs4dVZJendOQWV2TGdjcFwvWVByY0tqcjYrXC9MTVFOVHBuQnVCR0l2V1l0dEwyU0RiRldGbkRpRWIrOGJuNjhmVDgzWXNSRXBreXl2OFwvajBXMjI3bER6bTE1QmpZQ056RWpJbnN3U240dkVmSFZ5OFY3VXpoa1ZLdmwyWWhzbEJPZ1JqOUVMRXpLSGNXdTNlczNLVnlSQlZoblJhSE82dHBhbmROVlRSYWg0bE5DSVFDekVjekpTbFZXV0kwUVBRKzcrMlFmdXZqY0FDNGFqdEZFTGJJMFBjYTFBVWFOaHhzOTdHWUg2OGFzaTZ6RVZxQUlKYTFIdUpNbXFKd0NvY1JMbFpUS3pBQkpGMFZXMmV5aDAyazA2WGc3Z2dTWlkwbjExYW9pMStBRkRSQmsrYmxlVlRNeUxLYndwSHFuczVLczhXV2VZelZlbGxKd3B5ODBLRitDeXIyTXZ2U3dDNlAyQ2JvSzA2NEt1MUV2c1JxYjRUcWRKZ3ozUTRIck9sUTE0bHJOY0o4WjRpUVZiblZRK3Fvb3NwNGxjSDJRa3ZSUGdNT2VoUmdjemxyVlZcLyt4cHZNWm5PRlZuYzFnSlNOTmRmRXFhVGxiRW5tcEJ5eDBnRTFWZzJKZGhacEdWM1M0Z05rczJ0RHNCdkJrQW5jamdxYVFIWVdsZWduV2VBNW1MZVhWaUVlVWxmVFlxQ1dMUDVsQTFUVjVJOHVlektQWXQ5TWRMUE1DVEErd0JoVyt2Tm5cL0w5RTdVekFhTGN0NVdpWTlsUjZ1clpPN1Zvak9LdjBlTUlKTHZnYkh2OTlcL083blwvazl5b1oyQ016QzVFNUtwUHhTUXBiRzBqXC9QYnNkSDdpMDZcL2o2RVoydjVjamZ3R0g0VXpsY3djQUFBPT0iLCJzdWIiOiJhZG1pbkBGQVRFTi1IUSIsInJvbGVzIjpbIlJPTEVfQU1MX0FVVEhfQ1VTVE9NRVIiLCJST0xFX0NPUlBPUkFURV9BcHByb3ZhbCIsIlJPTEVfQ09SUE9SQVRFX01hbmFnZW1lbnQiLCJST0xFX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9DVVNUT01FUl9NQU5BR0VNRU5UIiwiUk9MRV9DVVNUT01FUl9TQ1JFRU5JTkdfVklFVyIsIlJPTEVfQ1VTVE9NRVJfU1VNTUFSWSIsIlJPTEVfQ1VTVE9NRVJfVklFVyIsIlJPTEVfTE9DQUxfQVBQUk9WRV9DVVNUT01FUiIsIlJPTEVfTE9PS1VQU19NQU5BR0VNRU5UIiwiUk9MRV9MT09LVVBTX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVQl9DT1JQT1JBVEVfQXBwcm92YWwiLCJST0xFX1NVQl9DT1JQT1JBVEVfTWFuYWdlbWVudCIsIlJPTEVfU1VCX0NPUlBPUkFURV9WSUVXIiwiUk9MRV9TVVBFUl9BRE1JTiIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIiwiUk9MRV9WRVJJRllfQ1VTVE9NRVIiXSwiaXNzIjoiU3ByaW5nIFNlY3VyaXR5IFJFU1QgR3JhaWxzIFBsdWdpbiIsImV4cCI6MTcyNDI0MDc3NSwiaWF0IjoxNzI0MjM3MTc1fQ.aQUyJ9gRPgT48kKd2dDWB5W4JoFTmcL_-sAosj-Dsy8',
  }) async {
    final baseUrl = AuthAndRegisterGroup.getBaseUrl(
      acceptLanguage: acceptLanguage,
      msgId: msgId,
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Uploaded Document',
      apiUrl: '$baseUrl/$deleteURL',
      callType: ApiCallType.DELETE,
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
