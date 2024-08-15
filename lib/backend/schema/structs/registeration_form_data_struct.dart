// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegisterationFormDataStruct extends BaseStruct {
  RegisterationFormDataStruct({
    String? idNumber,
    String? idType,
    String? firstNameAR,
    String? fatherNameAR,
    String? grandFatherNameAR,
    String? familyNameAR,
    String? firstNameEN,
    String? fatherNameEN,
    String? grandFatherNameEN,
    String? familyNameEN,
    String? motherNameEN,
    DateTime? dateOfBirth,
    String? birthOfPlace,
    String? gender,
    String? nationality,
    String? residentOfTheCountry,
    String? isUSPassportHolder,
    String? profession,
    String? placeOfWork,
    String? monthlyInComeDollar,
    String? cityCode,
    String? areaCode,
    String? addressText,
    String? isTrueBeneficiaryAccount,
    String? trueBeneficiaryName,
    String? relationShipWithTrueBeneficiary,
    String? isPEP,
    String? localPepFullName,
    String? latinPepFullName,
    String? relationshipWithPep,
    String? pepPosition,
    String? mobileNumber,
    String? prefixMobile,
    bool? isRegisteredStatus,
    String? email,
    String? hashedOTP,
  })  : _idNumber = idNumber,
        _idType = idType,
        _firstNameAR = firstNameAR,
        _fatherNameAR = fatherNameAR,
        _grandFatherNameAR = grandFatherNameAR,
        _familyNameAR = familyNameAR,
        _firstNameEN = firstNameEN,
        _fatherNameEN = fatherNameEN,
        _grandFatherNameEN = grandFatherNameEN,
        _familyNameEN = familyNameEN,
        _motherNameEN = motherNameEN,
        _dateOfBirth = dateOfBirth,
        _birthOfPlace = birthOfPlace,
        _gender = gender,
        _nationality = nationality,
        _residentOfTheCountry = residentOfTheCountry,
        _isUSPassportHolder = isUSPassportHolder,
        _profession = profession,
        _placeOfWork = placeOfWork,
        _monthlyInComeDollar = monthlyInComeDollar,
        _cityCode = cityCode,
        _areaCode = areaCode,
        _addressText = addressText,
        _isTrueBeneficiaryAccount = isTrueBeneficiaryAccount,
        _trueBeneficiaryName = trueBeneficiaryName,
        _relationShipWithTrueBeneficiary = relationShipWithTrueBeneficiary,
        _isPEP = isPEP,
        _localPepFullName = localPepFullName,
        _latinPepFullName = latinPepFullName,
        _relationshipWithPep = relationshipWithPep,
        _pepPosition = pepPosition,
        _mobileNumber = mobileNumber,
        _prefixMobile = prefixMobile,
        _isRegisteredStatus = isRegisteredStatus,
        _email = email,
        _hashedOTP = hashedOTP;

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

  // "FirstNameAR" field.
  String? _firstNameAR;
  String get firstNameAR => _firstNameAR ?? '';
  set firstNameAR(String? val) => _firstNameAR = val;

  bool hasFirstNameAR() => _firstNameAR != null;

  // "FatherNameAR" field.
  String? _fatherNameAR;
  String get fatherNameAR => _fatherNameAR ?? '';
  set fatherNameAR(String? val) => _fatherNameAR = val;

  bool hasFatherNameAR() => _fatherNameAR != null;

  // "GrandFatherNameAR" field.
  String? _grandFatherNameAR;
  String get grandFatherNameAR => _grandFatherNameAR ?? '';
  set grandFatherNameAR(String? val) => _grandFatherNameAR = val;

  bool hasGrandFatherNameAR() => _grandFatherNameAR != null;

  // "FamilyNameAR" field.
  String? _familyNameAR;
  String get familyNameAR => _familyNameAR ?? '';
  set familyNameAR(String? val) => _familyNameAR = val;

  bool hasFamilyNameAR() => _familyNameAR != null;

  // "FirstNameEN" field.
  String? _firstNameEN;
  String get firstNameEN => _firstNameEN ?? '';
  set firstNameEN(String? val) => _firstNameEN = val;

  bool hasFirstNameEN() => _firstNameEN != null;

  // "FatherNameEN" field.
  String? _fatherNameEN;
  String get fatherNameEN => _fatherNameEN ?? '';
  set fatherNameEN(String? val) => _fatherNameEN = val;

  bool hasFatherNameEN() => _fatherNameEN != null;

  // "GrandFatherNameEN" field.
  String? _grandFatherNameEN;
  String get grandFatherNameEN => _grandFatherNameEN ?? '';
  set grandFatherNameEN(String? val) => _grandFatherNameEN = val;

  bool hasGrandFatherNameEN() => _grandFatherNameEN != null;

  // "FamilyNameEN" field.
  String? _familyNameEN;
  String get familyNameEN => _familyNameEN ?? '';
  set familyNameEN(String? val) => _familyNameEN = val;

  bool hasFamilyNameEN() => _familyNameEN != null;

  // "MotherNameEN" field.
  String? _motherNameEN;
  String get motherNameEN => _motherNameEN ?? '';
  set motherNameEN(String? val) => _motherNameEN = val;

  bool hasMotherNameEN() => _motherNameEN != null;

  // "DateOfBirth" field.
  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _dateOfBirth;
  set dateOfBirth(DateTime? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "BirthOfPlace" field.
  String? _birthOfPlace;
  String get birthOfPlace => _birthOfPlace ?? '';
  set birthOfPlace(String? val) => _birthOfPlace = val;

  bool hasBirthOfPlace() => _birthOfPlace != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "Nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  set nationality(String? val) => _nationality = val;

  bool hasNationality() => _nationality != null;

  // "ResidentOfTheCountry" field.
  String? _residentOfTheCountry;
  String get residentOfTheCountry => _residentOfTheCountry ?? '';
  set residentOfTheCountry(String? val) => _residentOfTheCountry = val;

  bool hasResidentOfTheCountry() => _residentOfTheCountry != null;

  // "IsUSPassportHolder" field.
  String? _isUSPassportHolder;
  String get isUSPassportHolder => _isUSPassportHolder ?? '';
  set isUSPassportHolder(String? val) => _isUSPassportHolder = val;

  bool hasIsUSPassportHolder() => _isUSPassportHolder != null;

  // "Profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  set profession(String? val) => _profession = val;

  bool hasProfession() => _profession != null;

  // "PlaceOfWork" field.
  String? _placeOfWork;
  String get placeOfWork => _placeOfWork ?? '';
  set placeOfWork(String? val) => _placeOfWork = val;

  bool hasPlaceOfWork() => _placeOfWork != null;

  // "MonthlyInComeDollar" field.
  String? _monthlyInComeDollar;
  String get monthlyInComeDollar => _monthlyInComeDollar ?? '';
  set monthlyInComeDollar(String? val) => _monthlyInComeDollar = val;

  bool hasMonthlyInComeDollar() => _monthlyInComeDollar != null;

  // "cityCode" field.
  String? _cityCode;
  String get cityCode => _cityCode ?? '';
  set cityCode(String? val) => _cityCode = val;

  bool hasCityCode() => _cityCode != null;

  // "areaCode" field.
  String? _areaCode;
  String get areaCode => _areaCode ?? '';
  set areaCode(String? val) => _areaCode = val;

  bool hasAreaCode() => _areaCode != null;

  // "AddressText" field.
  String? _addressText;
  String get addressText => _addressText ?? '';
  set addressText(String? val) => _addressText = val;

  bool hasAddressText() => _addressText != null;

  // "IsTrueBeneficiaryAccount" field.
  String? _isTrueBeneficiaryAccount;
  String get isTrueBeneficiaryAccount => _isTrueBeneficiaryAccount ?? '';
  set isTrueBeneficiaryAccount(String? val) => _isTrueBeneficiaryAccount = val;

  bool hasIsTrueBeneficiaryAccount() => _isTrueBeneficiaryAccount != null;

  // "TrueBeneficiaryName" field.
  String? _trueBeneficiaryName;
  String get trueBeneficiaryName => _trueBeneficiaryName ?? '';
  set trueBeneficiaryName(String? val) => _trueBeneficiaryName = val;

  bool hasTrueBeneficiaryName() => _trueBeneficiaryName != null;

  // "relationShipWithTrueBeneficiary" field.
  String? _relationShipWithTrueBeneficiary;
  String get relationShipWithTrueBeneficiary =>
      _relationShipWithTrueBeneficiary ?? '';
  set relationShipWithTrueBeneficiary(String? val) =>
      _relationShipWithTrueBeneficiary = val;

  bool hasRelationShipWithTrueBeneficiary() =>
      _relationShipWithTrueBeneficiary != null;

  // "isPEP" field.
  String? _isPEP;
  String get isPEP => _isPEP ?? '';
  set isPEP(String? val) => _isPEP = val;

  bool hasIsPEP() => _isPEP != null;

  // "localPepFullName" field.
  String? _localPepFullName;
  String get localPepFullName => _localPepFullName ?? '';
  set localPepFullName(String? val) => _localPepFullName = val;

  bool hasLocalPepFullName() => _localPepFullName != null;

  // "latinPepFullName" field.
  String? _latinPepFullName;
  String get latinPepFullName => _latinPepFullName ?? '';
  set latinPepFullName(String? val) => _latinPepFullName = val;

  bool hasLatinPepFullName() => _latinPepFullName != null;

  // "relationshipWithPep" field.
  String? _relationshipWithPep;
  String get relationshipWithPep => _relationshipWithPep ?? '';
  set relationshipWithPep(String? val) => _relationshipWithPep = val;

  bool hasRelationshipWithPep() => _relationshipWithPep != null;

  // "pepPosition" field.
  String? _pepPosition;
  String get pepPosition => _pepPosition ?? '';
  set pepPosition(String? val) => _pepPosition = val;

  bool hasPepPosition() => _pepPosition != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "prefixMobile" field.
  String? _prefixMobile;
  String get prefixMobile => _prefixMobile ?? '+970';
  set prefixMobile(String? val) => _prefixMobile = val;

  bool hasPrefixMobile() => _prefixMobile != null;

  // "isRegisteredStatus" field.
  bool? _isRegisteredStatus;
  bool get isRegisteredStatus => _isRegisteredStatus ?? false;
  set isRegisteredStatus(bool? val) => _isRegisteredStatus = val;

  bool hasIsRegisteredStatus() => _isRegisteredStatus != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "hashedOTP" field.
  String? _hashedOTP;
  String get hashedOTP => _hashedOTP ?? '';
  set hashedOTP(String? val) => _hashedOTP = val;

  bool hasHashedOTP() => _hashedOTP != null;

  static RegisterationFormDataStruct fromMap(Map<String, dynamic> data) =>
      RegisterationFormDataStruct(
        idNumber: data['idNumber'] as String?,
        idType: data['idType'] as String?,
        firstNameAR: data['FirstNameAR'] as String?,
        fatherNameAR: data['FatherNameAR'] as String?,
        grandFatherNameAR: data['GrandFatherNameAR'] as String?,
        familyNameAR: data['FamilyNameAR'] as String?,
        firstNameEN: data['FirstNameEN'] as String?,
        fatherNameEN: data['FatherNameEN'] as String?,
        grandFatherNameEN: data['GrandFatherNameEN'] as String?,
        familyNameEN: data['FamilyNameEN'] as String?,
        motherNameEN: data['MotherNameEN'] as String?,
        dateOfBirth: data['DateOfBirth'] as DateTime?,
        birthOfPlace: data['BirthOfPlace'] as String?,
        gender: data['Gender'] as String?,
        nationality: data['Nationality'] as String?,
        residentOfTheCountry: data['ResidentOfTheCountry'] as String?,
        isUSPassportHolder: data['IsUSPassportHolder'] as String?,
        profession: data['Profession'] as String?,
        placeOfWork: data['PlaceOfWork'] as String?,
        monthlyInComeDollar: data['MonthlyInComeDollar'] as String?,
        cityCode: data['cityCode'] as String?,
        areaCode: data['areaCode'] as String?,
        addressText: data['AddressText'] as String?,
        isTrueBeneficiaryAccount: data['IsTrueBeneficiaryAccount'] as String?,
        trueBeneficiaryName: data['TrueBeneficiaryName'] as String?,
        relationShipWithTrueBeneficiary:
            data['relationShipWithTrueBeneficiary'] as String?,
        isPEP: data['isPEP'] as String?,
        localPepFullName: data['localPepFullName'] as String?,
        latinPepFullName: data['latinPepFullName'] as String?,
        relationshipWithPep: data['relationshipWithPep'] as String?,
        pepPosition: data['pepPosition'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        prefixMobile: data['prefixMobile'] as String?,
        isRegisteredStatus: data['isRegisteredStatus'] as bool?,
        email: data['email'] as String?,
        hashedOTP: data['hashedOTP'] as String?,
      );

  static RegisterationFormDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RegisterationFormDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idNumber': _idNumber,
        'idType': _idType,
        'FirstNameAR': _firstNameAR,
        'FatherNameAR': _fatherNameAR,
        'GrandFatherNameAR': _grandFatherNameAR,
        'FamilyNameAR': _familyNameAR,
        'FirstNameEN': _firstNameEN,
        'FatherNameEN': _fatherNameEN,
        'GrandFatherNameEN': _grandFatherNameEN,
        'FamilyNameEN': _familyNameEN,
        'MotherNameEN': _motherNameEN,
        'DateOfBirth': _dateOfBirth,
        'BirthOfPlace': _birthOfPlace,
        'Gender': _gender,
        'Nationality': _nationality,
        'ResidentOfTheCountry': _residentOfTheCountry,
        'IsUSPassportHolder': _isUSPassportHolder,
        'Profession': _profession,
        'PlaceOfWork': _placeOfWork,
        'MonthlyInComeDollar': _monthlyInComeDollar,
        'cityCode': _cityCode,
        'areaCode': _areaCode,
        'AddressText': _addressText,
        'IsTrueBeneficiaryAccount': _isTrueBeneficiaryAccount,
        'TrueBeneficiaryName': _trueBeneficiaryName,
        'relationShipWithTrueBeneficiary': _relationShipWithTrueBeneficiary,
        'isPEP': _isPEP,
        'localPepFullName': _localPepFullName,
        'latinPepFullName': _latinPepFullName,
        'relationshipWithPep': _relationshipWithPep,
        'pepPosition': _pepPosition,
        'mobileNumber': _mobileNumber,
        'prefixMobile': _prefixMobile,
        'isRegisteredStatus': _isRegisteredStatus,
        'email': _email,
        'hashedOTP': _hashedOTP,
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
        'FirstNameAR': serializeParam(
          _firstNameAR,
          ParamType.String,
        ),
        'FatherNameAR': serializeParam(
          _fatherNameAR,
          ParamType.String,
        ),
        'GrandFatherNameAR': serializeParam(
          _grandFatherNameAR,
          ParamType.String,
        ),
        'FamilyNameAR': serializeParam(
          _familyNameAR,
          ParamType.String,
        ),
        'FirstNameEN': serializeParam(
          _firstNameEN,
          ParamType.String,
        ),
        'FatherNameEN': serializeParam(
          _fatherNameEN,
          ParamType.String,
        ),
        'GrandFatherNameEN': serializeParam(
          _grandFatherNameEN,
          ParamType.String,
        ),
        'FamilyNameEN': serializeParam(
          _familyNameEN,
          ParamType.String,
        ),
        'MotherNameEN': serializeParam(
          _motherNameEN,
          ParamType.String,
        ),
        'DateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.DateTime,
        ),
        'BirthOfPlace': serializeParam(
          _birthOfPlace,
          ParamType.String,
        ),
        'Gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'Nationality': serializeParam(
          _nationality,
          ParamType.String,
        ),
        'ResidentOfTheCountry': serializeParam(
          _residentOfTheCountry,
          ParamType.String,
        ),
        'IsUSPassportHolder': serializeParam(
          _isUSPassportHolder,
          ParamType.String,
        ),
        'Profession': serializeParam(
          _profession,
          ParamType.String,
        ),
        'PlaceOfWork': serializeParam(
          _placeOfWork,
          ParamType.String,
        ),
        'MonthlyInComeDollar': serializeParam(
          _monthlyInComeDollar,
          ParamType.String,
        ),
        'cityCode': serializeParam(
          _cityCode,
          ParamType.String,
        ),
        'areaCode': serializeParam(
          _areaCode,
          ParamType.String,
        ),
        'AddressText': serializeParam(
          _addressText,
          ParamType.String,
        ),
        'IsTrueBeneficiaryAccount': serializeParam(
          _isTrueBeneficiaryAccount,
          ParamType.String,
        ),
        'TrueBeneficiaryName': serializeParam(
          _trueBeneficiaryName,
          ParamType.String,
        ),
        'relationShipWithTrueBeneficiary': serializeParam(
          _relationShipWithTrueBeneficiary,
          ParamType.String,
        ),
        'isPEP': serializeParam(
          _isPEP,
          ParamType.String,
        ),
        'localPepFullName': serializeParam(
          _localPepFullName,
          ParamType.String,
        ),
        'latinPepFullName': serializeParam(
          _latinPepFullName,
          ParamType.String,
        ),
        'relationshipWithPep': serializeParam(
          _relationshipWithPep,
          ParamType.String,
        ),
        'pepPosition': serializeParam(
          _pepPosition,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'prefixMobile': serializeParam(
          _prefixMobile,
          ParamType.String,
        ),
        'isRegisteredStatus': serializeParam(
          _isRegisteredStatus,
          ParamType.bool,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'hashedOTP': serializeParam(
          _hashedOTP,
          ParamType.String,
        ),
      }.withoutNulls;

  static RegisterationFormDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RegisterationFormDataStruct(
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
        firstNameAR: deserializeParam(
          data['FirstNameAR'],
          ParamType.String,
          false,
        ),
        fatherNameAR: deserializeParam(
          data['FatherNameAR'],
          ParamType.String,
          false,
        ),
        grandFatherNameAR: deserializeParam(
          data['GrandFatherNameAR'],
          ParamType.String,
          false,
        ),
        familyNameAR: deserializeParam(
          data['FamilyNameAR'],
          ParamType.String,
          false,
        ),
        firstNameEN: deserializeParam(
          data['FirstNameEN'],
          ParamType.String,
          false,
        ),
        fatherNameEN: deserializeParam(
          data['FatherNameEN'],
          ParamType.String,
          false,
        ),
        grandFatherNameEN: deserializeParam(
          data['GrandFatherNameEN'],
          ParamType.String,
          false,
        ),
        familyNameEN: deserializeParam(
          data['FamilyNameEN'],
          ParamType.String,
          false,
        ),
        motherNameEN: deserializeParam(
          data['MotherNameEN'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['DateOfBirth'],
          ParamType.DateTime,
          false,
        ),
        birthOfPlace: deserializeParam(
          data['BirthOfPlace'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['Gender'],
          ParamType.String,
          false,
        ),
        nationality: deserializeParam(
          data['Nationality'],
          ParamType.String,
          false,
        ),
        residentOfTheCountry: deserializeParam(
          data['ResidentOfTheCountry'],
          ParamType.String,
          false,
        ),
        isUSPassportHolder: deserializeParam(
          data['IsUSPassportHolder'],
          ParamType.String,
          false,
        ),
        profession: deserializeParam(
          data['Profession'],
          ParamType.String,
          false,
        ),
        placeOfWork: deserializeParam(
          data['PlaceOfWork'],
          ParamType.String,
          false,
        ),
        monthlyInComeDollar: deserializeParam(
          data['MonthlyInComeDollar'],
          ParamType.String,
          false,
        ),
        cityCode: deserializeParam(
          data['cityCode'],
          ParamType.String,
          false,
        ),
        areaCode: deserializeParam(
          data['areaCode'],
          ParamType.String,
          false,
        ),
        addressText: deserializeParam(
          data['AddressText'],
          ParamType.String,
          false,
        ),
        isTrueBeneficiaryAccount: deserializeParam(
          data['IsTrueBeneficiaryAccount'],
          ParamType.String,
          false,
        ),
        trueBeneficiaryName: deserializeParam(
          data['TrueBeneficiaryName'],
          ParamType.String,
          false,
        ),
        relationShipWithTrueBeneficiary: deserializeParam(
          data['relationShipWithTrueBeneficiary'],
          ParamType.String,
          false,
        ),
        isPEP: deserializeParam(
          data['isPEP'],
          ParamType.String,
          false,
        ),
        localPepFullName: deserializeParam(
          data['localPepFullName'],
          ParamType.String,
          false,
        ),
        latinPepFullName: deserializeParam(
          data['latinPepFullName'],
          ParamType.String,
          false,
        ),
        relationshipWithPep: deserializeParam(
          data['relationshipWithPep'],
          ParamType.String,
          false,
        ),
        pepPosition: deserializeParam(
          data['pepPosition'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        prefixMobile: deserializeParam(
          data['prefixMobile'],
          ParamType.String,
          false,
        ),
        isRegisteredStatus: deserializeParam(
          data['isRegisteredStatus'],
          ParamType.bool,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        hashedOTP: deserializeParam(
          data['hashedOTP'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RegisterationFormDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegisterationFormDataStruct &&
        idNumber == other.idNumber &&
        idType == other.idType &&
        firstNameAR == other.firstNameAR &&
        fatherNameAR == other.fatherNameAR &&
        grandFatherNameAR == other.grandFatherNameAR &&
        familyNameAR == other.familyNameAR &&
        firstNameEN == other.firstNameEN &&
        fatherNameEN == other.fatherNameEN &&
        grandFatherNameEN == other.grandFatherNameEN &&
        familyNameEN == other.familyNameEN &&
        motherNameEN == other.motherNameEN &&
        dateOfBirth == other.dateOfBirth &&
        birthOfPlace == other.birthOfPlace &&
        gender == other.gender &&
        nationality == other.nationality &&
        residentOfTheCountry == other.residentOfTheCountry &&
        isUSPassportHolder == other.isUSPassportHolder &&
        profession == other.profession &&
        placeOfWork == other.placeOfWork &&
        monthlyInComeDollar == other.monthlyInComeDollar &&
        cityCode == other.cityCode &&
        areaCode == other.areaCode &&
        addressText == other.addressText &&
        isTrueBeneficiaryAccount == other.isTrueBeneficiaryAccount &&
        trueBeneficiaryName == other.trueBeneficiaryName &&
        relationShipWithTrueBeneficiary ==
            other.relationShipWithTrueBeneficiary &&
        isPEP == other.isPEP &&
        localPepFullName == other.localPepFullName &&
        latinPepFullName == other.latinPepFullName &&
        relationshipWithPep == other.relationshipWithPep &&
        pepPosition == other.pepPosition &&
        mobileNumber == other.mobileNumber &&
        prefixMobile == other.prefixMobile &&
        isRegisteredStatus == other.isRegisteredStatus &&
        email == other.email &&
        hashedOTP == other.hashedOTP;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idNumber,
        idType,
        firstNameAR,
        fatherNameAR,
        grandFatherNameAR,
        familyNameAR,
        firstNameEN,
        fatherNameEN,
        grandFatherNameEN,
        familyNameEN,
        motherNameEN,
        dateOfBirth,
        birthOfPlace,
        gender,
        nationality,
        residentOfTheCountry,
        isUSPassportHolder,
        profession,
        placeOfWork,
        monthlyInComeDollar,
        cityCode,
        areaCode,
        addressText,
        isTrueBeneficiaryAccount,
        trueBeneficiaryName,
        relationShipWithTrueBeneficiary,
        isPEP,
        localPepFullName,
        latinPepFullName,
        relationshipWithPep,
        pepPosition,
        mobileNumber,
        prefixMobile,
        isRegisteredStatus,
        email,
        hashedOTP
      ]);
}

RegisterationFormDataStruct createRegisterationFormDataStruct({
  String? idNumber,
  String? idType,
  String? firstNameAR,
  String? fatherNameAR,
  String? grandFatherNameAR,
  String? familyNameAR,
  String? firstNameEN,
  String? fatherNameEN,
  String? grandFatherNameEN,
  String? familyNameEN,
  String? motherNameEN,
  DateTime? dateOfBirth,
  String? birthOfPlace,
  String? gender,
  String? nationality,
  String? residentOfTheCountry,
  String? isUSPassportHolder,
  String? profession,
  String? placeOfWork,
  String? monthlyInComeDollar,
  String? cityCode,
  String? areaCode,
  String? addressText,
  String? isTrueBeneficiaryAccount,
  String? trueBeneficiaryName,
  String? relationShipWithTrueBeneficiary,
  String? isPEP,
  String? localPepFullName,
  String? latinPepFullName,
  String? relationshipWithPep,
  String? pepPosition,
  String? mobileNumber,
  String? prefixMobile,
  bool? isRegisteredStatus,
  String? email,
  String? hashedOTP,
}) =>
    RegisterationFormDataStruct(
      idNumber: idNumber,
      idType: idType,
      firstNameAR: firstNameAR,
      fatherNameAR: fatherNameAR,
      grandFatherNameAR: grandFatherNameAR,
      familyNameAR: familyNameAR,
      firstNameEN: firstNameEN,
      fatherNameEN: fatherNameEN,
      grandFatherNameEN: grandFatherNameEN,
      familyNameEN: familyNameEN,
      motherNameEN: motherNameEN,
      dateOfBirth: dateOfBirth,
      birthOfPlace: birthOfPlace,
      gender: gender,
      nationality: nationality,
      residentOfTheCountry: residentOfTheCountry,
      isUSPassportHolder: isUSPassportHolder,
      profession: profession,
      placeOfWork: placeOfWork,
      monthlyInComeDollar: monthlyInComeDollar,
      cityCode: cityCode,
      areaCode: areaCode,
      addressText: addressText,
      isTrueBeneficiaryAccount: isTrueBeneficiaryAccount,
      trueBeneficiaryName: trueBeneficiaryName,
      relationShipWithTrueBeneficiary: relationShipWithTrueBeneficiary,
      isPEP: isPEP,
      localPepFullName: localPepFullName,
      latinPepFullName: latinPepFullName,
      relationshipWithPep: relationshipWithPep,
      pepPosition: pepPosition,
      mobileNumber: mobileNumber,
      prefixMobile: prefixMobile,
      isRegisteredStatus: isRegisteredStatus,
      email: email,
      hashedOTP: hashedOTP,
    );
