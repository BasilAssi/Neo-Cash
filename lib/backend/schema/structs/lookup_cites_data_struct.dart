// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LookupCitesDataStruct extends FFFirebaseStruct {
  LookupCitesDataStruct({
    String? encodedId,
    String? code,
    String? localName,
    String? latinName,
    String? description,
    String? moduleType,
    String? recordStatus,
    String? isoAlpha,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _encodedId = encodedId,
        _code = code,
        _localName = localName,
        _latinName = latinName,
        _description = description,
        _moduleType = moduleType,
        _recordStatus = recordStatus,
        _isoAlpha = isoAlpha,
        super(firestoreUtilData);

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

  // "isoAlpha" field.
  String? _isoAlpha;
  String get isoAlpha => _isoAlpha ?? '';
  set isoAlpha(String? val) => _isoAlpha = val;

  bool hasIsoAlpha() => _isoAlpha != null;

  static LookupCitesDataStruct fromMap(Map<String, dynamic> data) =>
      LookupCitesDataStruct(
        encodedId: data['encodedId'] as String?,
        code: data['code'] as String?,
        localName: data['localName'] as String?,
        latinName: data['latinName'] as String?,
        description: data['description'] as String?,
        moduleType: data['moduleType'] as String?,
        recordStatus: data['recordStatus'] as String?,
        isoAlpha: data['isoAlpha'] as String?,
      );

  static LookupCitesDataStruct? maybeFromMap(dynamic data) => data is Map
      ? LookupCitesDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'encodedId': _encodedId,
        'code': _code,
        'localName': _localName,
        'latinName': _latinName,
        'description': _description,
        'moduleType': _moduleType,
        'recordStatus': _recordStatus,
        'isoAlpha': _isoAlpha,
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
        'isoAlpha': serializeParam(
          _isoAlpha,
          ParamType.String,
        ),
      }.withoutNulls;

  static LookupCitesDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      LookupCitesDataStruct(
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
        isoAlpha: deserializeParam(
          data['isoAlpha'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LookupCitesDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LookupCitesDataStruct &&
        encodedId == other.encodedId &&
        code == other.code &&
        localName == other.localName &&
        latinName == other.latinName &&
        description == other.description &&
        moduleType == other.moduleType &&
        recordStatus == other.recordStatus &&
        isoAlpha == other.isoAlpha;
  }

  @override
  int get hashCode => const ListEquality().hash([
        encodedId,
        code,
        localName,
        latinName,
        description,
        moduleType,
        recordStatus,
        isoAlpha
      ]);
}

LookupCitesDataStruct createLookupCitesDataStruct({
  String? encodedId,
  String? code,
  String? localName,
  String? latinName,
  String? description,
  String? moduleType,
  String? recordStatus,
  String? isoAlpha,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LookupCitesDataStruct(
      encodedId: encodedId,
      code: code,
      localName: localName,
      latinName: latinName,
      description: description,
      moduleType: moduleType,
      recordStatus: recordStatus,
      isoAlpha: isoAlpha,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LookupCitesDataStruct? updateLookupCitesDataStruct(
  LookupCitesDataStruct? lookupCitesData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    lookupCitesData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLookupCitesDataStructData(
  Map<String, dynamic> firestoreData,
  LookupCitesDataStruct? lookupCitesData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (lookupCitesData == null) {
    return;
  }
  if (lookupCitesData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && lookupCitesData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final lookupCitesDataData =
      getLookupCitesDataFirestoreData(lookupCitesData, forFieldValue);
  final nestedData =
      lookupCitesDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = lookupCitesData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLookupCitesDataFirestoreData(
  LookupCitesDataStruct? lookupCitesData, [
  bool forFieldValue = false,
]) {
  if (lookupCitesData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(lookupCitesData.toMap());

  // Add any Firestore field values
  lookupCitesData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLookupCitesDataListFirestoreData(
  List<LookupCitesDataStruct>? lookupCitesDatas,
) =>
    lookupCitesDatas
        ?.map((e) => getLookupCitesDataFirestoreData(e, true))
        .toList() ??
    [];
