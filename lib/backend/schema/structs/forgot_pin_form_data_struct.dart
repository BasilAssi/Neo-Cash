// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ForgotPinFormDataStruct extends FFFirebaseStruct {
  ForgotPinFormDataStruct({
    String? idNumber,
    String? idType,
    String? dateOfBirth,
    String? currentPassword,
    String? hashedOTP,
    String? prefixMobile,
    String? mobileNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idNumber = idNumber,
        _idType = idType,
        _dateOfBirth = dateOfBirth,
        _currentPassword = currentPassword,
        _hashedOTP = hashedOTP,
        _prefixMobile = prefixMobile,
        _mobileNumber = mobileNumber,
        super(firestoreUtilData);

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  set idNumber(String? val) => _idNumber = val;

  bool hasIdNumber() => _idNumber != null;

  // "idType" field.
  String? _idType;
  String get idType => _idType ?? '';
  set idType(String? val) => _idType = val;

  bool hasIdType() => _idType != null;

  // "DateOfBirth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "currentPassword" field.
  String? _currentPassword;
  String get currentPassword => _currentPassword ?? '';
  set currentPassword(String? val) => _currentPassword = val;

  bool hasCurrentPassword() => _currentPassword != null;

  // "hashedOTP" field.
  String? _hashedOTP;
  String get hashedOTP => _hashedOTP ?? '';
  set hashedOTP(String? val) => _hashedOTP = val;

  bool hasHashedOTP() => _hashedOTP != null;

  // "prefixMobile" field.
  String? _prefixMobile;
  String get prefixMobile => _prefixMobile ?? '';
  set prefixMobile(String? val) => _prefixMobile = val;

  bool hasPrefixMobile() => _prefixMobile != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  static ForgotPinFormDataStruct fromMap(Map<String, dynamic> data) =>
      ForgotPinFormDataStruct(
        idNumber: data['idNumber'] as String?,
        idType: data['idType'] as String?,
        dateOfBirth: data['DateOfBirth'] as String?,
        currentPassword: data['currentPassword'] as String?,
        hashedOTP: data['hashedOTP'] as String?,
        prefixMobile: data['prefixMobile'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
      );

  static ForgotPinFormDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ForgotPinFormDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idNumber': _idNumber,
        'idType': _idType,
        'DateOfBirth': _dateOfBirth,
        'currentPassword': _currentPassword,
        'hashedOTP': _hashedOTP,
        'prefixMobile': _prefixMobile,
        'mobileNumber': _mobileNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idNumber': serializeParam(
          _idNumber,
          ParamType.String,
        ),
        'idType': serializeParam(
          _idType,
          ParamType.String,
        ),
        'DateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'currentPassword': serializeParam(
          _currentPassword,
          ParamType.String,
        ),
        'hashedOTP': serializeParam(
          _hashedOTP,
          ParamType.String,
        ),
        'prefixMobile': serializeParam(
          _prefixMobile,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static ForgotPinFormDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ForgotPinFormDataStruct(
        idNumber: deserializeParam(
          data['idNumber'],
          ParamType.String,
          false,
        ),
        idType: deserializeParam(
          data['idType'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['DateOfBirth'],
          ParamType.String,
          false,
        ),
        currentPassword: deserializeParam(
          data['currentPassword'],
          ParamType.String,
          false,
        ),
        hashedOTP: deserializeParam(
          data['hashedOTP'],
          ParamType.String,
          false,
        ),
        prefixMobile: deserializeParam(
          data['prefixMobile'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ForgotPinFormDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ForgotPinFormDataStruct &&
        idNumber == other.idNumber &&
        idType == other.idType &&
        dateOfBirth == other.dateOfBirth &&
        currentPassword == other.currentPassword &&
        hashedOTP == other.hashedOTP &&
        prefixMobile == other.prefixMobile &&
        mobileNumber == other.mobileNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idNumber,
        idType,
        dateOfBirth,
        currentPassword,
        hashedOTP,
        prefixMobile,
        mobileNumber
      ]);
}

ForgotPinFormDataStruct createForgotPinFormDataStruct({
  String? idNumber,
  String? idType,
  String? dateOfBirth,
  String? currentPassword,
  String? hashedOTP,
  String? prefixMobile,
  String? mobileNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ForgotPinFormDataStruct(
      idNumber: idNumber,
      idType: idType,
      dateOfBirth: dateOfBirth,
      currentPassword: currentPassword,
      hashedOTP: hashedOTP,
      prefixMobile: prefixMobile,
      mobileNumber: mobileNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ForgotPinFormDataStruct? updateForgotPinFormDataStruct(
  ForgotPinFormDataStruct? forgotPinFormData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    forgotPinFormData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addForgotPinFormDataStructData(
  Map<String, dynamic> firestoreData,
  ForgotPinFormDataStruct? forgotPinFormData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (forgotPinFormData == null) {
    return;
  }
  if (forgotPinFormData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && forgotPinFormData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final forgotPinFormDataData =
      getForgotPinFormDataFirestoreData(forgotPinFormData, forFieldValue);
  final nestedData =
      forgotPinFormDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = forgotPinFormData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getForgotPinFormDataFirestoreData(
  ForgotPinFormDataStruct? forgotPinFormData, [
  bool forFieldValue = false,
]) {
  if (forgotPinFormData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(forgotPinFormData.toMap());

  // Add any Firestore field values
  forgotPinFormData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getForgotPinFormDataListFirestoreData(
  List<ForgotPinFormDataStruct>? forgotPinFormDatas,
) =>
    forgotPinFormDatas
        ?.map((e) => getForgotPinFormDataFirestoreData(e, true))
        .toList() ??
    [];
