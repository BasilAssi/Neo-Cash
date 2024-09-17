// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IsRegisteredAPIResponseStruct extends FFFirebaseStruct {
  IsRegisteredAPIResponseStruct({
    String? code,
    String? message,
    String? offset,
    String? referenceId,
    bool? status,
    String? totalCount,
    List<IsRegisteredDataStruct>? records,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _code = code,
        _message = message,
        _offset = offset,
        _referenceId = referenceId,
        _status = status,
        _totalCount = totalCount,
        _records = records,
        super(firestoreUtilData);

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "offset" field.
  String? _offset;
  String get offset => _offset ?? '';
  set offset(String? val) => _offset = val;

  bool hasOffset() => _offset != null;

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "totalCount" field.
  String? _totalCount;
  String get totalCount => _totalCount ?? '';
  set totalCount(String? val) => _totalCount = val;

  bool hasTotalCount() => _totalCount != null;

  // "records" field.
  List<IsRegisteredDataStruct>? _records;
  List<IsRegisteredDataStruct> get records => _records ?? const [];
  set records(List<IsRegisteredDataStruct>? val) => _records = val;

  void updateRecords(Function(List<IsRegisteredDataStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  static IsRegisteredAPIResponseStruct fromMap(Map<String, dynamic> data) =>
      IsRegisteredAPIResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        offset: data['offset'] as String?,
        referenceId: data['referenceId'] as String?,
        status: data['status'] as bool?,
        totalCount: data['totalCount'] as String?,
        records: getStructList(
          data['records'],
          IsRegisteredDataStruct.fromMap,
        ),
      );

  static IsRegisteredAPIResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? IsRegisteredAPIResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
        'offset': _offset,
        'referenceId': _referenceId,
        'status': _status,
        'totalCount': _totalCount,
        'records': _records?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.String,
        ),
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'totalCount': serializeParam(
          _totalCount,
          ParamType.String,
        ),
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static IsRegisteredAPIResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IsRegisteredAPIResponseStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.String,
          false,
        ),
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        totalCount: deserializeParam(
          data['totalCount'],
          ParamType.String,
          false,
        ),
        records: deserializeStructParam<IsRegisteredDataStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: IsRegisteredDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'IsRegisteredAPIResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IsRegisteredAPIResponseStruct &&
        code == other.code &&
        message == other.message &&
        offset == other.offset &&
        referenceId == other.referenceId &&
        status == other.status &&
        totalCount == other.totalCount &&
        listEquality.equals(records, other.records);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([code, message, offset, referenceId, status, totalCount, records]);
}

IsRegisteredAPIResponseStruct createIsRegisteredAPIResponseStruct({
  String? code,
  String? message,
  String? offset,
  String? referenceId,
  bool? status,
  String? totalCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IsRegisteredAPIResponseStruct(
      code: code,
      message: message,
      offset: offset,
      referenceId: referenceId,
      status: status,
      totalCount: totalCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IsRegisteredAPIResponseStruct? updateIsRegisteredAPIResponseStruct(
  IsRegisteredAPIResponseStruct? isRegisteredAPIResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    isRegisteredAPIResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIsRegisteredAPIResponseStructData(
  Map<String, dynamic> firestoreData,
  IsRegisteredAPIResponseStruct? isRegisteredAPIResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (isRegisteredAPIResponse == null) {
    return;
  }
  if (isRegisteredAPIResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      isRegisteredAPIResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final isRegisteredAPIResponseData = getIsRegisteredAPIResponseFirestoreData(
      isRegisteredAPIResponse, forFieldValue);
  final nestedData =
      isRegisteredAPIResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      isRegisteredAPIResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIsRegisteredAPIResponseFirestoreData(
  IsRegisteredAPIResponseStruct? isRegisteredAPIResponse, [
  bool forFieldValue = false,
]) {
  if (isRegisteredAPIResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(isRegisteredAPIResponse.toMap());

  // Add any Firestore field values
  isRegisteredAPIResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIsRegisteredAPIResponseListFirestoreData(
  List<IsRegisteredAPIResponseStruct>? isRegisteredAPIResponses,
) =>
    isRegisteredAPIResponses
        ?.map((e) => getIsRegisteredAPIResponseFirestoreData(e, true))
        .toList() ??
    [];
