// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsAppStruct extends BaseStruct {
  SettingsAppStruct({
    bool? biometricEnabled,
    int? numberOfBiometricFailure,
  })  : _biometricEnabled = biometricEnabled,
        _numberOfBiometricFailure = numberOfBiometricFailure;

  // "biometricEnabled" field.
  bool? _biometricEnabled;
  bool get biometricEnabled => _biometricEnabled ?? false;
  set biometricEnabled(bool? val) => _biometricEnabled = val;

  bool hasBiometricEnabled() => _biometricEnabled != null;

  // "numberOfBiometricFailure" field.
  int? _numberOfBiometricFailure;
  int get numberOfBiometricFailure => _numberOfBiometricFailure ?? 0;
  set numberOfBiometricFailure(int? val) => _numberOfBiometricFailure = val;

  void incrementNumberOfBiometricFailure(int amount) =>
      numberOfBiometricFailure = numberOfBiometricFailure + amount;

  bool hasNumberOfBiometricFailure() => _numberOfBiometricFailure != null;

  static SettingsAppStruct fromMap(Map<String, dynamic> data) =>
      SettingsAppStruct(
        biometricEnabled: data['biometricEnabled'] as bool?,
        numberOfBiometricFailure:
            castToType<int>(data['numberOfBiometricFailure']),
      );

  static SettingsAppStruct? maybeFromMap(dynamic data) => data is Map
      ? SettingsAppStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'biometricEnabled': _biometricEnabled,
        'numberOfBiometricFailure': _numberOfBiometricFailure,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'biometricEnabled': serializeParam(
          _biometricEnabled,
          ParamType.bool,
        ),
        'numberOfBiometricFailure': serializeParam(
          _numberOfBiometricFailure,
          ParamType.int,
        ),
      }.withoutNulls;

  static SettingsAppStruct fromSerializableMap(Map<String, dynamic> data) =>
      SettingsAppStruct(
        biometricEnabled: deserializeParam(
          data['biometricEnabled'],
          ParamType.bool,
          false,
        ),
        numberOfBiometricFailure: deserializeParam(
          data['numberOfBiometricFailure'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SettingsAppStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SettingsAppStruct &&
        biometricEnabled == other.biometricEnabled &&
        numberOfBiometricFailure == other.numberOfBiometricFailure;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([biometricEnabled, numberOfBiometricFailure]);
}

SettingsAppStruct createSettingsAppStruct({
  bool? biometricEnabled,
  int? numberOfBiometricFailure,
}) =>
    SettingsAppStruct(
      biometricEnabled: biometricEnabled,
      numberOfBiometricFailure: numberOfBiometricFailure,
    );
