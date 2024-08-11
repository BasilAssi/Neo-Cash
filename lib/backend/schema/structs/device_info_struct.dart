// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceInfoStruct extends BaseStruct {
  DeviceInfoStruct({
    String? serial,
    String? name,
    String? osName,
    String? osVersion,
    String? brandName,
    String? brandVersion,
    String? biometricSupported,
  })  : _serial = serial,
        _name = name,
        _osName = osName,
        _osVersion = osVersion,
        _brandName = brandName,
        _brandVersion = brandVersion,
        _biometricSupported = biometricSupported;

  // "serial" field.
  String? _serial;
  String get serial => _serial ?? '';
  set serial(String? val) => _serial = val;

  bool hasSerial() => _serial != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "osName" field.
  String? _osName;
  String get osName => _osName ?? '';
  set osName(String? val) => _osName = val;

  bool hasOsName() => _osName != null;

  // "osVersion" field.
  String? _osVersion;
  String get osVersion => _osVersion ?? '';
  set osVersion(String? val) => _osVersion = val;

  bool hasOsVersion() => _osVersion != null;

  // "brandName" field.
  String? _brandName;
  String get brandName => _brandName ?? '';
  set brandName(String? val) => _brandName = val;

  bool hasBrandName() => _brandName != null;

  // "brandVersion" field.
  String? _brandVersion;
  String get brandVersion => _brandVersion ?? '';
  set brandVersion(String? val) => _brandVersion = val;

  bool hasBrandVersion() => _brandVersion != null;

  // "biometricSupported" field.
  String? _biometricSupported;
  String get biometricSupported => _biometricSupported ?? '';
  set biometricSupported(String? val) => _biometricSupported = val;

  bool hasBiometricSupported() => _biometricSupported != null;

  static DeviceInfoStruct fromMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        serial: data['serial'] as String?,
        name: data['name'] as String?,
        osName: data['osName'] as String?,
        osVersion: data['osVersion'] as String?,
        brandName: data['brandName'] as String?,
        brandVersion: data['brandVersion'] as String?,
        biometricSupported: data['biometricSupported'] as String?,
      );

  static DeviceInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'serial': _serial,
        'name': _name,
        'osName': _osName,
        'osVersion': _osVersion,
        'brandName': _brandName,
        'brandVersion': _brandVersion,
        'biometricSupported': _biometricSupported,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'serial': serializeParam(
          _serial,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'osName': serializeParam(
          _osName,
          ParamType.String,
        ),
        'osVersion': serializeParam(
          _osVersion,
          ParamType.String,
        ),
        'brandName': serializeParam(
          _brandName,
          ParamType.String,
        ),
        'brandVersion': serializeParam(
          _brandVersion,
          ParamType.String,
        ),
        'biometricSupported': serializeParam(
          _biometricSupported,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        serial: deserializeParam(
          data['serial'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        osName: deserializeParam(
          data['osName'],
          ParamType.String,
          false,
        ),
        osVersion: deserializeParam(
          data['osVersion'],
          ParamType.String,
          false,
        ),
        brandName: deserializeParam(
          data['brandName'],
          ParamType.String,
          false,
        ),
        brandVersion: deserializeParam(
          data['brandVersion'],
          ParamType.String,
          false,
        ),
        biometricSupported: deserializeParam(
          data['biometricSupported'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceInfoStruct &&
        serial == other.serial &&
        name == other.name &&
        osName == other.osName &&
        osVersion == other.osVersion &&
        brandName == other.brandName &&
        brandVersion == other.brandVersion &&
        biometricSupported == other.biometricSupported;
  }

  @override
  int get hashCode => const ListEquality().hash([
        serial,
        name,
        osName,
        osVersion,
        brandName,
        brandVersion,
        biometricSupported
      ]);
}

DeviceInfoStruct createDeviceInfoStruct({
  String? serial,
  String? name,
  String? osName,
  String? osVersion,
  String? brandName,
  String? brandVersion,
  String? biometricSupported,
}) =>
    DeviceInfoStruct(
      serial: serial,
      name: name,
      osName: osName,
      osVersion: osVersion,
      brandName: brandName,
      brandVersion: brandVersion,
      biometricSupported: biometricSupported,
    );
