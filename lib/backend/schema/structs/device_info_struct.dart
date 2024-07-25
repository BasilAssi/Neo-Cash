// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceInfoStruct extends BaseStruct {
  DeviceInfoStruct({
    String? serialNumber,
    String? deviceName,
    String? brandName,
    String? os,
  })  : _serialNumber = serialNumber,
        _deviceName = deviceName,
        _brandName = brandName,
        _os = os;

  // "serialNumber" field.
  String? _serialNumber;
  String get serialNumber => _serialNumber ?? '';
  set serialNumber(String? val) => _serialNumber = val;

  bool hasSerialNumber() => _serialNumber != null;

  // "deviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "brandName" field.
  String? _brandName;
  String get brandName => _brandName ?? '';
  set brandName(String? val) => _brandName = val;

  bool hasBrandName() => _brandName != null;

  // "OS" field.
  String? _os;
  String get os => _os ?? '';
  set os(String? val) => _os = val;

  bool hasOs() => _os != null;

  static DeviceInfoStruct fromMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        serialNumber: data['serialNumber'] as String?,
        deviceName: data['deviceName'] as String?,
        brandName: data['brandName'] as String?,
        os: data['OS'] as String?,
      );

  static DeviceInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'serialNumber': _serialNumber,
        'deviceName': _deviceName,
        'brandName': _brandName,
        'OS': _os,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'serialNumber': serializeParam(
          _serialNumber,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'brandName': serializeParam(
          _brandName,
          ParamType.String,
        ),
        'OS': serializeParam(
          _os,
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
        deviceName: deserializeParam(
          data['deviceName'],
          ParamType.String,
          false,
        ),
        brandName: deserializeParam(
          data['brandName'],
          ParamType.String,
          false,
        ),
        os: deserializeParam(
          data['OS'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceInfoStruct &&
        serialNumber == other.serialNumber &&
        deviceName == other.deviceName &&
        brandName == other.brandName &&
        os == other.os;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([serialNumber, deviceName, brandName, os]);
}

DeviceInfoStruct createDeviceInfoStruct({
  String? serialNumber,
  String? deviceName,
  String? brandName,
  String? os,
}) =>
    DeviceInfoStruct(
      serialNumber: serialNumber,
      deviceName: deviceName,
      brandName: brandName,
      os: os,
    );
