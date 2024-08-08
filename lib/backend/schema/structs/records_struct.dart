// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordsStruct extends BaseStruct {
  RecordsStruct({
    String? encodedId,
    String? localName,
    String? latinName,
    String? isoAlpha,
    String? recordStatus,
    String? isoNumeric,
  })  : _encodedId = encodedId,
        _localName = localName,
        _latinName = latinName,
        _isoAlpha = isoAlpha,
        _recordStatus = recordStatus,
        _isoNumeric = isoNumeric;

  // "encodedId" field.
  String? _encodedId;
  String get encodedId => _encodedId ?? '';
  set encodedId(String? val) => _encodedId = val;

  bool hasEncodedId() => _encodedId != null;

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

  // "isoAlpha" field.
  String? _isoAlpha;
  String get isoAlpha => _isoAlpha ?? '';
  set isoAlpha(String? val) => _isoAlpha = val;

  bool hasIsoAlpha() => _isoAlpha != null;

  // "recordStatus" field.
  String? _recordStatus;
  String get recordStatus => _recordStatus ?? '';
  set recordStatus(String? val) => _recordStatus = val;

  bool hasRecordStatus() => _recordStatus != null;

  // "isoNumeric" field.
  String? _isoNumeric;
  String get isoNumeric => _isoNumeric ?? '';
  set isoNumeric(String? val) => _isoNumeric = val;

  bool hasIsoNumeric() => _isoNumeric != null;

  static RecordsStruct fromMap(Map<String, dynamic> data) => RecordsStruct(
        encodedId: data['encodedId'] as String?,
        localName: data['localName'] as String?,
        latinName: data['latinName'] as String?,
        isoAlpha: data['isoAlpha'] as String?,
        recordStatus: data['recordStatus'] as String?,
        isoNumeric: data['isoNumeric'] as String?,
      );

  static RecordsStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecordsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'encodedId': _encodedId,
        'localName': _localName,
        'latinName': _latinName,
        'isoAlpha': _isoAlpha,
        'recordStatus': _recordStatus,
        'isoNumeric': _isoNumeric,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'encodedId': serializeParam(
          _encodedId,
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
        'isoAlpha': serializeParam(
          _isoAlpha,
          ParamType.String,
        ),
        'recordStatus': serializeParam(
          _recordStatus,
          ParamType.String,
        ),
        'isoNumeric': serializeParam(
          _isoNumeric,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecordsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecordsStruct(
        encodedId: deserializeParam(
          data['encodedId'],
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
        isoAlpha: deserializeParam(
          data['isoAlpha'],
          ParamType.String,
          false,
        ),
        recordStatus: deserializeParam(
          data['recordStatus'],
          ParamType.String,
          false,
        ),
        isoNumeric: deserializeParam(
          data['isoNumeric'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecordsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecordsStruct &&
        encodedId == other.encodedId &&
        localName == other.localName &&
        latinName == other.latinName &&
        isoAlpha == other.isoAlpha &&
        recordStatus == other.recordStatus &&
        isoNumeric == other.isoNumeric;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [encodedId, localName, latinName, isoAlpha, recordStatus, isoNumeric]);
}

RecordsStruct createRecordsStruct({
  String? encodedId,
  String? localName,
  String? latinName,
  String? isoAlpha,
  String? recordStatus,
  String? isoNumeric,
}) =>
    RecordsStruct(
      encodedId: encodedId,
      localName: localName,
      latinName: latinName,
      isoAlpha: isoAlpha,
      recordStatus: recordStatus,
      isoNumeric: isoNumeric,
    );
