// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateTypeStruct extends BaseStruct {
  DateTypeStruct({
    String? name,
    DateTime? startDate,
    DateTime? endDate,
    DateTypes? dateEnum,
  })  : _name = name,
        _startDate = startDate,
        _endDate = endDate,
        _dateEnum = dateEnum;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "date_enum" field.
  DateTypes? _dateEnum;
  DateTypes? get dateEnum => _dateEnum;
  set dateEnum(DateTypes? val) => _dateEnum = val;

  bool hasDateEnum() => _dateEnum != null;

  static DateTypeStruct fromMap(Map<String, dynamic> data) => DateTypeStruct(
        name: data['name'] as String?,
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
        dateEnum: deserializeEnum<DateTypes>(data['date_enum']),
      );

  static DateTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? DateTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'start_date': _startDate,
        'end_date': _endDate,
        'date_enum': _dateEnum?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'date_enum': serializeParam(
          _dateEnum,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static DateTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DateTypeStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
        dateEnum: deserializeParam<DateTypes>(
          data['date_enum'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'DateTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DateTypeStruct &&
        name == other.name &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        dateEnum == other.dateEnum;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, startDate, endDate, dateEnum]);
}

DateTypeStruct createDateTypeStruct({
  String? name,
  DateTime? startDate,
  DateTime? endDate,
  DateTypes? dateEnum,
}) =>
    DateTypeStruct(
      name: name,
      startDate: startDate,
      endDate: endDate,
      dateEnum: dateEnum,
    );
