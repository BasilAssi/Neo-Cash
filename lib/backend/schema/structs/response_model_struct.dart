// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseModelStruct extends BaseStruct {
  ResponseModelStruct({
    bool? status,
    String? message,
    String? code,
    String? referenceId,
  })  : _status = status,
        _message = message,
        _code = code,
        _referenceId = referenceId;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  static ResponseModelStruct fromMap(Map<String, dynamic> data) =>
      ResponseModelStruct(
        status: data['status'] as bool?,
        message: data['message'] as String?,
        code: data['code'] as String?,
        referenceId: data['referenceId'] as String?,
      );

  static ResponseModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
        'code': _code,
        'referenceId': _referenceId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseModelStruct(
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponseModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseModelStruct &&
        status == other.status &&
        message == other.message &&
        code == other.code &&
        referenceId == other.referenceId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, message, code, referenceId]);
}

ResponseModelStruct createResponseModelStruct({
  bool? status,
  String? message,
  String? code,
  String? referenceId,
}) =>
    ResponseModelStruct(
      status: status,
      message: message,
      code: code,
      referenceId: referenceId,
    );
