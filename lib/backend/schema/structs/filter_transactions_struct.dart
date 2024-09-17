// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterTransactionsStruct extends FFFirebaseStruct {
  FilterTransactionsStruct({
    String? dateFrom,
    String? dateTo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dateFrom = dateFrom,
        _dateTo = dateTo,
        super(firestoreUtilData);

  // "dateFrom" field.
  String? _dateFrom;
  String get dateFrom => _dateFrom ?? '';
  set dateFrom(String? val) => _dateFrom = val;

  bool hasDateFrom() => _dateFrom != null;

  // "dateTo" field.
  String? _dateTo;
  String get dateTo => _dateTo ?? '';
  set dateTo(String? val) => _dateTo = val;

  bool hasDateTo() => _dateTo != null;

  static FilterTransactionsStruct fromMap(Map<String, dynamic> data) =>
      FilterTransactionsStruct(
        dateFrom: data['dateFrom'] as String?,
        dateTo: data['dateTo'] as String?,
      );

  static FilterTransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterTransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dateFrom': _dateFrom,
        'dateTo': _dateTo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dateFrom': serializeParam(
          _dateFrom,
          ParamType.String,
        ),
        'dateTo': serializeParam(
          _dateTo,
          ParamType.String,
        ),
      }.withoutNulls;

  static FilterTransactionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FilterTransactionsStruct(
        dateFrom: deserializeParam(
          data['dateFrom'],
          ParamType.String,
          false,
        ),
        dateTo: deserializeParam(
          data['dateTo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FilterTransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterTransactionsStruct &&
        dateFrom == other.dateFrom &&
        dateTo == other.dateTo;
  }

  @override
  int get hashCode => const ListEquality().hash([dateFrom, dateTo]);
}

FilterTransactionsStruct createFilterTransactionsStruct({
  String? dateFrom,
  String? dateTo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FilterTransactionsStruct(
      dateFrom: dateFrom,
      dateTo: dateTo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FilterTransactionsStruct? updateFilterTransactionsStruct(
  FilterTransactionsStruct? filterTransactions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    filterTransactions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFilterTransactionsStructData(
  Map<String, dynamic> firestoreData,
  FilterTransactionsStruct? filterTransactions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filterTransactions == null) {
    return;
  }
  if (filterTransactions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && filterTransactions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filterTransactionsData =
      getFilterTransactionsFirestoreData(filterTransactions, forFieldValue);
  final nestedData =
      filterTransactionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      filterTransactions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFilterTransactionsFirestoreData(
  FilterTransactionsStruct? filterTransactions, [
  bool forFieldValue = false,
]) {
  if (filterTransactions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(filterTransactions.toMap());

  // Add any Firestore field values
  filterTransactions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFilterTransactionsListFirestoreData(
  List<FilterTransactionsStruct>? filterTransactionss,
) =>
    filterTransactionss
        ?.map((e) => getFilterTransactionsFirestoreData(e, true))
        .toList() ??
    [];
