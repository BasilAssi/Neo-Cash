// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceInfoStruct extends BaseStruct {
  DeviceInfoStruct({
    String? serialNumber,
  }) : _serialNumber = serialNumber;

  // "serialNumber" field.
  String? _serialNumber;
  String get serialNumber => _serialNumber ?? '';
  set serialNumber(String? val) => _serialNumber = val;

  bool hasSerialNumber() => _serialNumber != null;

  static DeviceInfoStruct fromMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        serialNumber: data['serialNumber'] as String?,
      );

  static DeviceInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'serialNumber': _serialNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'serialNumber': serializeParam(
          _serialNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        serialNumber: deserializeParam(
          data['serialNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceInfoStruct && serialNumber == other.serialNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([serialNumber]);
}

DeviceInfoStruct createDeviceInfoStruct({
  String? serialNumber,
}) =>
    DeviceInfoStruct(
      serialNumber: serialNumber,
    );
