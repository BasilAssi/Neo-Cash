// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LoginAPIResponseStruct extends FFFirebaseStruct {
  LoginAPIResponseStruct({
    String? accessToken,
    String? message,
    bool? status,
    String? code,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _accessToken = accessToken,
        _message = message,
        _status = status,
        _code = code,
        super(firestoreUtilData);

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

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static LoginAPIResponseStruct fromMap(Map<String, dynamic> data) =>
      LoginAPIResponseStruct(
        accessToken: data['access_token'] as String?,
        message: data['message'] as String?,
        status: data['status'] as bool?,
        code: data['code'] as String?,
      );

  static LoginAPIResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginAPIResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'message': _message,
        'status': _status,
        'code': _code,
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
        'code': serializeParam(
          _code,
          ParamType.String,
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
        code: deserializeParam(
          data['code'],
          ParamType.String,
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
        status == other.status &&
        code == other.code;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, message, status, code]);
}

LoginAPIResponseStruct createLoginAPIResponseStruct({
  String? accessToken,
  String? message,
  bool? status,
  String? code,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LoginAPIResponseStruct(
      accessToken: accessToken,
      message: message,
      status: status,
      code: code,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LoginAPIResponseStruct? updateLoginAPIResponseStruct(
  LoginAPIResponseStruct? loginAPIResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    loginAPIResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLoginAPIResponseStructData(
  Map<String, dynamic> firestoreData,
  LoginAPIResponseStruct? loginAPIResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (loginAPIResponse == null) {
    return;
  }
  if (loginAPIResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && loginAPIResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final loginAPIResponseData =
      getLoginAPIResponseFirestoreData(loginAPIResponse, forFieldValue);
  final nestedData =
      loginAPIResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = loginAPIResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLoginAPIResponseFirestoreData(
  LoginAPIResponseStruct? loginAPIResponse, [
  bool forFieldValue = false,
]) {
  if (loginAPIResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(loginAPIResponse.toMap());

  // Add any Firestore field values
  loginAPIResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLoginAPIResponseListFirestoreData(
  List<LoginAPIResponseStruct>? loginAPIResponses,
) =>
    loginAPIResponses
        ?.map((e) => getLoginAPIResponseFirestoreData(e, true))
        .toList() ??
    [];
