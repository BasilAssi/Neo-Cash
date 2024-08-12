// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsAppStruct extends BaseStruct {
  SettingsAppStruct({
    bool? biometricEnabled,
  }) : _biometricEnabled = biometricEnabled;

  // "biometricEnabled" field.
  bool? _biometricEnabled;
  bool get biometricEnabled => _biometricEnabled ?? false;
  set biometricEnabled(bool? val) => _biometricEnabled = val;

  bool hasBiometricEnabled() => _biometricEnabled != null;

  static SettingsAppStruct fromMap(Map<String, dynamic> data) =>
      SettingsAppStruct(
        biometricEnabled: data['biometricEnabled'] as bool?,
      );

  static SettingsAppStruct? maybeFromMap(dynamic data) => data is Map
      ? SettingsAppStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'biometricEnabled': _biometricEnabled,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'biometricEnabled': serializeParam(
          _biometricEnabled,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SettingsAppStruct fromSerializableMap(Map<String, dynamic> data) =>
      SettingsAppStruct(
        biometricEnabled: deserializeParam(
          data['biometricEnabled'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SettingsAppStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SettingsAppStruct &&
        biometricEnabled == other.biometricEnabled;
  }

  @override
  int get hashCode => const ListEquality().hash([biometricEnabled]);
}

SettingsAppStruct createSettingsAppStruct({
  bool? biometricEnabled,
}) =>
    SettingsAppStruct(
      biometricEnabled: biometricEnabled,
    );
