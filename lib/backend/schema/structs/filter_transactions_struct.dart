// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterTransactionsStruct extends BaseStruct {
  FilterTransactionsStruct({
    String? dateFrom,
    String? dateTo,
  })  : _dateFrom = dateFrom,
        _dateTo = dateTo;

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
}) =>
    FilterTransactionsStruct(
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
