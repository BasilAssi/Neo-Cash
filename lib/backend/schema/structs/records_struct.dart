// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordsStruct extends FFFirebaseStruct {
  RecordsStruct({
    String? encodedId,
    String? localName,
    String? latinName,
    String? isoAlpha,
    String? recordStatus,
    String? isoNumeric,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _encodedId = encodedId,
        _localName = localName,
        _latinName = latinName,
        _isoAlpha = isoAlpha,
        _recordStatus = recordStatus,
        _isoNumeric = isoNumeric,
        super(firestoreUtilData);

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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecordsStruct(
      encodedId: encodedId,
      localName: localName,
      latinName: latinName,
      isoAlpha: isoAlpha,
      recordStatus: recordStatus,
      isoNumeric: isoNumeric,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecordsStruct? updateRecordsStruct(
  RecordsStruct? records, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    records
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecordsStructData(
  Map<String, dynamic> firestoreData,
  RecordsStruct? records,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (records == null) {
    return;
  }
  if (records.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && records.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recordsData = getRecordsFirestoreData(records, forFieldValue);
  final nestedData = recordsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = records.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecordsFirestoreData(
  RecordsStruct? records, [
  bool forFieldValue = false,
]) {
  if (records == null) {
    return {};
  }
  final firestoreData = mapToFirestore(records.toMap());

  // Add any Firestore field values
  records.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecordsListFirestoreData(
  List<RecordsStruct>? recordss,
) =>
    recordss?.map((e) => getRecordsFirestoreData(e, true)).toList() ?? [];
