// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginAPIResponseStruct extends BaseStruct {
  LoginAPIResponseStruct({
    String? accessToken,
    String? message,
    bool? status,
  })  : _accessToken = accessToken,
        _message = message,
        _status = status;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  static LoginAPIResponseStruct fromMap(Map<String, dynamic> data) =>
      LoginAPIResponseStruct(
        accessToken: data['access_token'] as String?,
        message: data['message'] as String?,
        status: data['status'] as bool?,
      );

  static LoginAPIResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginAPIResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'message': _message,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static LoginAPIResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoginAPIResponseStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LoginAPIResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginAPIResponseStruct &&
        accessToken == other.accessToken &&
        message == other.message &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([accessToken, message, status]);
}

LoginAPIResponseStruct createLoginAPIResponseStruct({
  String? accessToken,
  String? message,
  bool? status,
}) =>
    LoginAPIResponseStruct(
      accessToken: accessToken,
      message: message,
      status: status,
    );
