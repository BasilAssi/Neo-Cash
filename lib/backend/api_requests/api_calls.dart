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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
}

class IsRegisteredCall {
  Future<ApiCallResponse> call({
    String? idNumber = '',
    String? idType = '',
    String? deviceSerial = '',
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
    String? acceptLanguage = 'EN',
    String? msgId = '',
    String? token =
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
        'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSlZTUVU4VFFSajl1aFl4d1FBMTBjUURYc0NiMlJwTnFkaVRrTVZBTnBSMHJTYVEyRXgzaDJWZ2RtYWRtWVgyWW5yU0F3ZU1TbUxpWCtDZjZNVWZZUFRnbGJOWHYxbEt0M29oem1uenpkdjMzdmZlbko3QmhGYndNRmFFY2UybVBJdVpjSFdxbUlnMURUUEZUTlwvTk5GVVJOVG5pYVE1czR3VE9UOG1Ca2c4T2l3emM4UGZJQWFseUl1SnFzN3RIUTlQb0tYZ2dWVHhrM0ZFa29ZZFM3YnNqN2xBcStwZEFRZTA4ZG1CeUN5b2tER1VteklZVVhpOWxpa1piTUZ2TWZCbnUyOUhORUcrb01JeHdQUTZkcElKME9ZMThtQ0taMlpXb3lxZzJNSE51TmpPTVZ3TnFHajVjUzRuVzZPNmZUUUpqcmR0N2ExUGdCcVwvZ05aUjdhUWtQWm5mWFFsM0w0NjVJem5GckpvVmVhSXRFUm15SFdYSGtIOHk5XC8zYjhlZEIyQURDVGU1ZlwvVTh4dkw4UGd5OHZmZFwvS2dTNkdCVzJQV0MxaWpsNktiU3NIOFRGR3JcL1AzVDVvZVRzN2ZiVjFEWklsYlwvdjQrRko4UGsraXN5U1lraVJvNTFoTFNIWmZ1TjVNdVhrMSswMEhjRGxxU2M0b3NTaGtZamlZSVkxeTByeVNcL3l4czVhVGRcL3J0QU92RlhTZXIza3Z0TDJaTmxBWnpUdWJyZWJxbXU5WjlQV2wrdjNhMHFONmZYR3hWa052MDNrMHRsUFhsOWpvMGE5M1g0XC9uZjZET09rd2NFSjVSYkdhMkFHMWtTWmVxTjZjbmMxTWZmeDdsZXc3ZlwvTlVcL2hoYUdORGNEQUFBPSIsInN1YiI6Ijk3MDU5ODc3NjY1NSIsInJvbGVzIjpbIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJjdXN0b21lckluZm8iOnsiY29ycmVjdGlvblJlYXNvbiI6bnVsbCwicGVwUG9zaXRpb24iOm51bGwsInRoaXJkTmFtZUFyIjoi2LnYp9mF2LEiLCJnZW5kZXIiOiJNIiwibWlkZGxlTmFtZUFyIjoi2KjYs9in2YUiLCJtb2JpbGVOdW1iZXIiOiI1OTg3NzY2NTUiLCJjaXR5Q29kZSI6bnVsbCwiY3VzdG9tZXJEb2N1bWVudHMiOlt7ImRvY3VtZW50VHlwZSI6ItmI2KvZitmC2Kkg2KfZhNiq2LnYsdmK2YEiLCJkb2N1bWVudFVybCI6IlwvbmMtYWRtaW5cL3JlcG9zaXRvcnlcL3ByZXZpZXdGaWxlP3R5cGU9Q1VTVE9NRVJfUkVHSVNUUkFUSU9OJmVuY29kZWRJZD1NamMlM0QifSx7ImRvY3VtZW50VHlwZSI6ItmG2YXZiNiw2Kwg2YHYqtitINin2YTYrdiz2KfYqCDZhdmI2YLYuSIsImRvY3VtZW50VXJsIjoiXC9uYy1hZG1pblwvcmVwb3NpdG9yeVwvcHJldmlld0ZpbGU_dHlwZT1DVVNUT01FUl9SRUdJU1RSQVRJT04mZW5jb2RlZElkPU1qWSUzRCJ9XSwibW9iaWxlTnVtYmVyVmVyaWZpZWQiOm51bGwsInRoaXJkTmFtZSI6IkFtZXIiLCJpZE51bWJlciI6Ijg1MTU2MjcyNyIsImNvdW50cnlJZCI6bnVsbCwiY3VzdG9tZXJTdGF0dXMiOiJBUFBST1ZFRCIsInRydWVCZW5lZmljaWFyeU5hbWUiOm51bGwsImJpcnRoUGxhY2UiOiJSYW1hbGxhaCIsImVtYWlsQWRkcmVzcyI6ImJhc2VsQGdtYWlsLmNvbSIsIm5hdGlvbmFsaXR5Q29kZSI6bnVsbCwibG9jYWxQZXBGdWxsTmFtZSI6bnVsbCwiaXNVc1Bhc3Nwb3J0SG9sZGVyIjpmYWxzZSwibW90aGVyTmFtZUVuIjoi2LrYp9mE2YrYqSIsInJlbGF0aW9uU2hpcFdpdGhUcnVlQmVuZWZpY2lhcnkiOm51bGwsImZhbWlseU5hbWUiOiJBc3NpIiwicmVsYXRpb25zaGlwV2l0aFBlcCI6bnVsbCwicGxhY2VPZldvcmsiOm51bGwsImZhbWlseU5hbWVBciI6Iti52KfYtdmKIiwibGF0aW5QZXBGdWxsTmFtZSI6bnVsbCwicHJvZmVzc2lvbiI6bnVsbCwiaXNNaXNzaW5nRG9jdW1lbnRzIjpmYWxzZSwiaWRUeXBlIjoiTkFUSU9OQUwiLCJhZGRyZXNzIjpudWxsLCJtb2JpbGVOdW1iZXIyIjoiNTkyMTIzNDU2IiwibW9iaWxlTnVtYmVyUHJlZml4IjoiOTcwIiwiaXNQRVAiOmZhbHNlLCJlbmNvZGVkSWQiOiJORE14TkE9PSIsImJpcnRoRGF0ZSI6bnVsbCwiZmlyc3ROYW1lIjoiQmFzZWwiLCJlbWFpbFZlcmlmaWVkIjpudWxsLCJhcmVhQ29kZSI6bnVsbCwiaXNUcnVlQWNjb3VudEJlbmVmaWNpYXJ5Ijp0cnVlLCJpc0RldmljZVJlZ2lzdGVyZWQiOnRydWUsIm1pZGRsZU5hbWUiOiJCYXNzYW0iLCJmaXJzdE5hbWVBciI6Itio2KfYs9mEIiwibW9udGhseUluY29tZVVzZCI6bnVsbCwicmVzaWRlbmN5VHlwZSI6IlJFU0lERU5UIn0sImV4cCI6MTcyNDA2NDU0NSwiaWF0IjoxNzI0MDYwOTQ1fQ.v0zoxv-8GqNtr7NpeyC2BDox1WBOjVUy4ui6Q3mPREw',
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
