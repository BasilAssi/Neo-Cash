// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListExchangeRateDataStruct extends FFFirebaseStruct {
  ListExchangeRateDataStruct({
    String? code,
    String? message,
    String? offset,
    List<ExchangeRateDataStruct>? records,
    String? referenceId,
    String? totalCount,
    bool? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _code = code,
        _message = message,
        _offset = offset,
        _records = records,
        _referenceId = referenceId,
        _totalCount = totalCount,
        _status = status,
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

  // "records" field.
  List<ExchangeRateDataStruct>? _records;
  List<ExchangeRateDataStruct> get records => _records ?? const [];
  set records(List<ExchangeRateDataStruct>? val) => _records = val;

  void updateRecords(Function(List<ExchangeRateDataStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "totalCount" field.
  String? _totalCount;
  String get totalCount => _totalCount ?? '';
  set totalCount(String? val) => _totalCount = val;

  bool hasTotalCount() => _totalCount != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  static ListExchangeRateDataStruct fromMap(Map<String, dynamic> data) =>
      ListExchangeRateDataStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        offset: data['offset'] as String?,
        records: getStructList(
          data['records'],
          ExchangeRateDataStruct.fromMap,
        ),
        referenceId: data['referenceId'] as String?,
        totalCount: data['totalCount'] as String?,
        status: data['status'] as bool?,
      );

  static ListExchangeRateDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ListExchangeRateDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
        'offset': _offset,
        'records': _records?.map((e) => e.toMap()).toList(),
        'referenceId': _referenceId,
        'totalCount': _totalCount,
        'status': _status,
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
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'totalCount': serializeParam(
          _totalCount,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ListExchangeRateDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListExchangeRateDataStruct(
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
        records: deserializeStructParam<ExchangeRateDataStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: ExchangeRateDataStruct.fromSerializableMap,
        ),
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
        totalCount: deserializeParam(
          data['totalCount'],
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
  String toString() => 'ListExchangeRateDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListExchangeRateDataStruct &&
        code == other.code &&
        message == other.message &&
        offset == other.offset &&
        listEquality.equals(records, other.records) &&
        referenceId == other.referenceId &&
        totalCount == other.totalCount &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([code, message, offset, records, referenceId, totalCount, status]);
}

ListExchangeRateDataStruct createListExchangeRateDataStruct({
  String? code,
  String? message,
  String? offset,
  String? referenceId,
  String? totalCount,
  bool? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListExchangeRateDataStruct(
      code: code,
      message: message,
      offset: offset,
      referenceId: referenceId,
      totalCount: totalCount,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListExchangeRateDataStruct? updateListExchangeRateDataStruct(
  ListExchangeRateDataStruct? listExchangeRateData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listExchangeRateData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListExchangeRateDataStructData(
  Map<String, dynamic> firestoreData,
  ListExchangeRateDataStruct? listExchangeRateData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listExchangeRateData == null) {
    return;
  }
  if (listExchangeRateData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listExchangeRateData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listExchangeRateDataData =
      getListExchangeRateDataFirestoreData(listExchangeRateData, forFieldValue);
  final nestedData =
      listExchangeRateDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      listExchangeRateData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListExchangeRateDataFirestoreData(
  ListExchangeRateDataStruct? listExchangeRateData, [
  bool forFieldValue = false,
]) {
  if (listExchangeRateData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listExchangeRateData.toMap());

  // Add any Firestore field values
  listExchangeRateData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListExchangeRateDataListFirestoreData(
  List<ListExchangeRateDataStruct>? listExchangeRateDatas,
) =>
    listExchangeRateDatas
        ?.map((e) => getListExchangeRateDataFirestoreData(e, true))
        .toList() ??
    [];
