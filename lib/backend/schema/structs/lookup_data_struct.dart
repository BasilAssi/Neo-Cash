// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LookupDataStruct extends BaseStruct {
  LookupDataStruct({
    String? encodedId,
    String? code,
    String? localName,
    String? latinName,
    String? description,
    String? moduleType,
    String? recordStatus,
  })  : _encodedId = encodedId,
        _code = code,
        _localName = localName,
        _latinName = latinName,
        _description = description,
        _moduleType = moduleType,
        _recordStatus = recordStatus;

  // "encodedId" field.
  String? _encodedId;
  String get encodedId => _encodedId ?? '';
  set encodedId(String? val) => _encodedId = val;

  bool hasEncodedId() => _encodedId != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "localName" field.
  String? _localName;
  String get localName => _localName ?? '';
  set localName(String? val) => _localName = val;

  bool hasLocalName() => _localName != null;

  // "latinName" field.
  String? _latinName;
  String get latinName => _latinName ?? '';
  set latinName(String? val) => _latinName = val;

  bool hasLatinName() => _latinName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "moduleType" field.
  String? _moduleType;
  String get moduleType => _moduleType ?? '';
  set moduleType(String? val) => _moduleType = val;

  bool hasModuleType() => _moduleType != null;

  // "recordStatus" field.
  String? _recordStatus;
  String get recordStatus => _recordStatus ?? '';
  set recordStatus(String? val) => _recordStatus = val;

  bool hasRecordStatus() => _recordStatus != null;

  static LookupDataStruct fromMap(Map<String, dynamic> data) =>
      LookupDataStruct(
        encodedId: data['encodedId'] as String?,
        code: data['code'] as String?,
        localName: data['localName'] as String?,
        latinName: data['latinName'] as String?,
        description: data['description'] as String?,
        moduleType: data['moduleType'] as String?,
        recordStatus: data['recordStatus'] as String?,
      );

  static LookupDataStruct? maybeFromMap(dynamic data) => data is Map
      ? LookupDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'encodedId': _encodedId,
        'code': _code,
        'localName': _localName,
        'latinName': _latinName,
        'description': _description,
        'moduleType': _moduleType,
        'recordStatus': _recordStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'encodedId': serializeParam(
          _encodedId,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'localName': serializeParam(
          _localName,
          ParamType.String,
        ),
        'latinName': serializeParam(
          _latinName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'moduleType': serializeParam(
          _moduleType,
          ParamType.String,
        ),
        'recordStatus': serializeParam(
          _recordStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static LookupDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      LookupDataStruct(
        encodedId: deserializeParam(
          data['encodedId'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        localName: deserializeParam(
          data['localName'],
          ParamType.String,
          false,
        ),
        latinName: deserializeParam(
          data['latinName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        moduleType: deserializeParam(
          data['moduleType'],
          ParamType.String,
          false,
        ),
        recordStatus: deserializeParam(
          data['recordStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LookupDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LookupDataStruct &&
        encodedId == other.encodedId &&
        code == other.code &&
        localName == other.localName &&
        latinName == other.latinName &&
        description == other.description &&
        moduleType == other.moduleType &&
        recordStatus == other.recordStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        encodedId,
        code,
        localName,
        latinName,
        description,
        moduleType,
        recordStatus
      ]);
}

LookupDataStruct createLookupDataStruct({
  String? encodedId,
  String? code,
  String? localName,
  String? latinName,
  String? description,
  String? moduleType,
  String? recordStatus,
}) =>
    LookupDataStruct(
      encodedId: encodedId,
      code: code,
      localName: localName,
      latinName: latinName,
      description: description,
      moduleType: moduleType,
      recordStatus: recordStatus,
    );
