// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterTransactionsStruct extends BaseStruct {
  FilterTransactionsStruct({
    DateTime? dateFrom,
    DateTime? dateTo,
  })  : _dateFrom = dateFrom,
        _dateTo = dateTo;

  // "dateFrom" field.
  DateTime? _dateFrom;
  DateTime? get dateFrom => _dateFrom;
  set dateFrom(DateTime? val) => _dateFrom = val;

  bool hasDateFrom() => _dateFrom != null;

  // "dateTo" field.
  DateTime? _dateTo;
  DateTime? get dateTo => _dateTo;
  set dateTo(DateTime? val) => _dateTo = val;

  bool hasDateTo() => _dateTo != null;

  static FilterTransactionsStruct fromMap(Map<String, dynamic> data) =>
      FilterTransactionsStruct(
        dateFrom: data['dateFrom'] as DateTime?,
        dateTo: data['dateTo'] as DateTime?,
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
          ParamType.DateTime,
        ),
        'dateTo': serializeParam(
          _dateTo,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static FilterTransactionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FilterTransactionsStruct(
        dateFrom: deserializeParam(
          data['dateFrom'],
          ParamType.DateTime,
          false,
        ),
        dateTo: deserializeParam(
          data['dateTo'],
          ParamType.DateTime,
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
  DateTime? dateFrom,
  DateTime? dateTo,
}) =>
    FilterTransactionsStruct(
      dateFrom: dateFrom,
      dateTo: dateTo,
    );
