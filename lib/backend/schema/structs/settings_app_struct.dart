// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsAppStruct extends FFFirebaseStruct {
  SettingsAppStruct({
    bool? biometricEnabled,
    int? numberOfBiometricFailure,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _biometricEnabled = biometricEnabled,
        _numberOfBiometricFailure = numberOfBiometricFailure,
        super(firestoreUtilData);

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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SettingsAppStruct(
      biometricEnabled: biometricEnabled,
      numberOfBiometricFailure: numberOfBiometricFailure,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SettingsAppStruct? updateSettingsAppStruct(
  SettingsAppStruct? settingsApp, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    settingsApp
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSettingsAppStructData(
  Map<String, dynamic> firestoreData,
  SettingsAppStruct? settingsApp,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (settingsApp == null) {
    return;
  }
  if (settingsApp.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && settingsApp.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final settingsAppData =
      getSettingsAppFirestoreData(settingsApp, forFieldValue);
  final nestedData =
      settingsAppData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = settingsApp.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSettingsAppFirestoreData(
  SettingsAppStruct? settingsApp, [
  bool forFieldValue = false,
]) {
  if (settingsApp == null) {
    return {};
  }
  final firestoreData = mapToFirestore(settingsApp.toMap());

  // Add any Firestore field values
  settingsApp.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSettingsAppListFirestoreData(
  List<SettingsAppStruct>? settingsApps,
) =>
    settingsApps?.map((e) => getSettingsAppFirestoreData(e, true)).toList() ??
    [];
