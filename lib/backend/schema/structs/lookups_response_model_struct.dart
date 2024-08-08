// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LookupsResponseModelStruct extends BaseStruct {
  LookupsResponseModelStruct({
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

  static LookupsResponseModelStruct fromMap(Map<String, dynamic> data) =>
      LookupsResponseModelStruct(
        status: data['status'] as bool?,
        message: data['message'] as String?,
        code: data['code'] as String?,
        referenceId: data['referenceId'] as String?,
      );

  static LookupsResponseModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LookupsResponseModelStruct.fromMap(data.cast<String, dynamic>())
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

  static LookupsResponseModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LookupsResponseModelStruct(
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
  String toString() => 'LookupsResponseModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LookupsResponseModelStruct &&
        status == other.status &&
        message == other.message &&
        code == other.code &&
        referenceId == other.referenceId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, message, code, referenceId]);
}

LookupsResponseModelStruct createLookupsResponseModelStruct({
  bool? status,
  String? message,
  String? code,
  String? referenceId,
}) =>
    LookupsResponseModelStruct(
      status: status,
      message: message,
      code: code,
      referenceId: referenceId,
    );
