// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IsRegisteredDataStruct extends FFFirebaseStruct {
  IsRegisteredDataStruct({
    String? isUsPassportHolder,
    String? pepPosition,
    String? address,
    String? firstName,
    String? mobileNumber2,
    String? familyNameAr,
    String? mobileNumber,
    String? correctionReason,
    String? relationShipWithTrueBeneficiary,
    String? latinPepFullName,
    String? isTrueAccountBeneficiary,
    String? emailAddress,
    String? localPepFullName,
    String? thirdNameAr,
    String? monthlyIncomeUsd,
    String? middleName,
    String? motherNameEn,
    String? gender,
    String? areaCode,
    String? middleNameAr,
    String? mobileNumberVerified,
    String? residencyType,
    String? birthPlace,
    String? customerDocuments,
    String? encodedId,
    String? profession,
    String? nationalityCode,
    String? isPEP,
    String? countryId,
    String? birthDate,
    String? relationshipWithPep,
    String? trueBeneficiaryName,
    String? isDeviceRegistered,
    String? placeOfWork,
    String? firstNameAr,
    String? emailVerified,
    String? thirdName,
    String? cityCode,
    String? customerStatus,
    String? familyName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isUsPassportHolder = isUsPassportHolder,
        _pepPosition = pepPosition,
        _address = address,
        _firstName = firstName,
        _mobileNumber2 = mobileNumber2,
        _familyNameAr = familyNameAr,
        _mobileNumber = mobileNumber,
        _correctionReason = correctionReason,
        _relationShipWithTrueBeneficiary = relationShipWithTrueBeneficiary,
        _latinPepFullName = latinPepFullName,
        _isTrueAccountBeneficiary = isTrueAccountBeneficiary,
        _emailAddress = emailAddress,
        _localPepFullName = localPepFullName,
        _thirdNameAr = thirdNameAr,
        _monthlyIncomeUsd = monthlyIncomeUsd,
        _middleName = middleName,
        _motherNameEn = motherNameEn,
        _gender = gender,
        _areaCode = areaCode,
        _middleNameAr = middleNameAr,
        _mobileNumberVerified = mobileNumberVerified,
        _residencyType = residencyType,
        _birthPlace = birthPlace,
        _customerDocuments = customerDocuments,
        _encodedId = encodedId,
        _profession = profession,
        _nationalityCode = nationalityCode,
        _isPEP = isPEP,
        _countryId = countryId,
        _birthDate = birthDate,
        _relationshipWithPep = relationshipWithPep,
        _trueBeneficiaryName = trueBeneficiaryName,
        _isDeviceRegistered = isDeviceRegistered,
        _placeOfWork = placeOfWork,
        _firstNameAr = firstNameAr,
        _emailVerified = emailVerified,
        _thirdName = thirdName,
        _cityCode = cityCode,
        _customerStatus = customerStatus,
        _familyName = familyName,
        super(firestoreUtilData);

  // "isUsPassportHolder" field.
  String? _isUsPassportHolder;
  String get isUsPassportHolder => _isUsPassportHolder ?? '';
  set isUsPassportHolder(String? val) => _isUsPassportHolder = val;

  bool hasIsUsPassportHolder() => _isUsPassportHolder != null;

  // "pepPosition" field.
  String? _pepPosition;
  String get pepPosition => _pepPosition ?? '';
  set pepPosition(String? val) => _pepPosition = val;

  bool hasPepPosition() => _pepPosition != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "mobileNumber2" field.
  String? _mobileNumber2;
  String get mobileNumber2 => _mobileNumber2 ?? '';
  set mobileNumber2(String? val) => _mobileNumber2 = val;

  bool hasMobileNumber2() => _mobileNumber2 != null;

  // "familyNameAr" field.
  String? _familyNameAr;
  String get familyNameAr => _familyNameAr ?? '';
  set familyNameAr(String? val) => _familyNameAr = val;

  bool hasFamilyNameAr() => _familyNameAr != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "correctionReason" field.
  String? _correctionReason;
  String get correctionReason => _correctionReason ?? '';
  set correctionReason(String? val) => _correctionReason = val;

  bool hasCorrectionReason() => _correctionReason != null;

  // "relationShipWithTrueBeneficiary" field.
  String? _relationShipWithTrueBeneficiary;
  String get relationShipWithTrueBeneficiary =>
      _relationShipWithTrueBeneficiary ?? '';
  set relationShipWithTrueBeneficiary(String? val) =>
      _relationShipWithTrueBeneficiary = val;

  bool hasRelationShipWithTrueBeneficiary() =>
      _relationShipWithTrueBeneficiary != null;

  // "latinPepFullName" field.
  String? _latinPepFullName;
  String get latinPepFullName => _latinPepFullName ?? '';
  set latinPepFullName(String? val) => _latinPepFullName = val;

  bool hasLatinPepFullName() => _latinPepFullName != null;

  // "isTrueAccountBeneficiary" field.
  String? _isTrueAccountBeneficiary;
  String get isTrueAccountBeneficiary => _isTrueAccountBeneficiary ?? '';
  set isTrueAccountBeneficiary(String? val) => _isTrueAccountBeneficiary = val;

  bool hasIsTrueAccountBeneficiary() => _isTrueAccountBeneficiary != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;

  bool hasEmailAddress() => _emailAddress != null;

  // "localPepFullName" field.
  String? _localPepFullName;
  String get localPepFullName => _localPepFullName ?? '';
  set localPepFullName(String? val) => _localPepFullName = val;

  bool hasLocalPepFullName() => _localPepFullName != null;

  // "thirdNameAr" field.
  String? _thirdNameAr;
  String get thirdNameAr => _thirdNameAr ?? '';
  set thirdNameAr(String? val) => _thirdNameAr = val;

  bool hasThirdNameAr() => _thirdNameAr != null;

  // "monthlyIncomeUsd" field.
  String? _monthlyIncomeUsd;
  String get monthlyIncomeUsd => _monthlyIncomeUsd ?? '';
  set monthlyIncomeUsd(String? val) => _monthlyIncomeUsd = val;

  bool hasMonthlyIncomeUsd() => _monthlyIncomeUsd != null;

  // "middleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;

  bool hasMiddleName() => _middleName != null;

  // "motherNameEn" field.
  String? _motherNameEn;
  String get motherNameEn => _motherNameEn ?? '';
  set motherNameEn(String? val) => _motherNameEn = val;

  bool hasMotherNameEn() => _motherNameEn != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "areaCode" field.
  String? _areaCode;
  String get areaCode => _areaCode ?? '';
  set areaCode(String? val) => _areaCode = val;

  bool hasAreaCode() => _areaCode != null;

  // "middleNameAr" field.
  String? _middleNameAr;
  String get middleNameAr => _middleNameAr ?? '';
  set middleNameAr(String? val) => _middleNameAr = val;

  bool hasMiddleNameAr() => _middleNameAr != null;

  // "mobileNumberVerified" field.
  String? _mobileNumberVerified;
  String get mobileNumberVerified => _mobileNumberVerified ?? '';
  set mobileNumberVerified(String? val) => _mobileNumberVerified = val;

  bool hasMobileNumberVerified() => _mobileNumberVerified != null;

  // "residencyType" field.
  String? _residencyType;
  String get residencyType => _residencyType ?? '';
  set residencyType(String? val) => _residencyType = val;

  bool hasResidencyType() => _residencyType != null;

  // "birthPlace" field.
  String? _birthPlace;
  String get birthPlace => _birthPlace ?? '';
  set birthPlace(String? val) => _birthPlace = val;

  bool hasBirthPlace() => _birthPlace != null;

  // "customerDocuments" field.
  String? _customerDocuments;
  String get customerDocuments => _customerDocuments ?? '';
  set customerDocuments(String? val) => _customerDocuments = val;

  bool hasCustomerDocuments() => _customerDocuments != null;

  // "encodedId" field.
  String? _encodedId;
  String get encodedId => _encodedId ?? '';
  set encodedId(String? val) => _encodedId = val;

  bool hasEncodedId() => _encodedId != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  set profession(String? val) => _profession = val;

  bool hasProfession() => _profession != null;

  // "nationalityCode" field.
  String? _nationalityCode;
  String get nationalityCode => _nationalityCode ?? '';
  set nationalityCode(String? val) => _nationalityCode = val;

  bool hasNationalityCode() => _nationalityCode != null;

  // "isPEP" field.
  String? _isPEP;
  String get isPEP => _isPEP ?? '';
  set isPEP(String? val) => _isPEP = val;

  bool hasIsPEP() => _isPEP != null;

  // "countryId" field.
  String? _countryId;
  String get countryId => _countryId ?? '';
  set countryId(String? val) => _countryId = val;

  bool hasCountryId() => _countryId != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "relationshipWithPep" field.
  String? _relationshipWithPep;
  String get relationshipWithPep => _relationshipWithPep ?? '';
  set relationshipWithPep(String? val) => _relationshipWithPep = val;

  bool hasRelationshipWithPep() => _relationshipWithPep != null;

  // "trueBeneficiaryName" field.
  String? _trueBeneficiaryName;
  String get trueBeneficiaryName => _trueBeneficiaryName ?? '';
  set trueBeneficiaryName(String? val) => _trueBeneficiaryName = val;

  bool hasTrueBeneficiaryName() => _trueBeneficiaryName != null;

  // "isDeviceRegistered" field.
  String? _isDeviceRegistered;
  String get isDeviceRegistered => _isDeviceRegistered ?? '';
  set isDeviceRegistered(String? val) => _isDeviceRegistered = val;

  bool hasIsDeviceRegistered() => _isDeviceRegistered != null;

  // "placeOfWork" field.
  String? _placeOfWork;
  String get placeOfWork => _placeOfWork ?? '';
  set placeOfWork(String? val) => _placeOfWork = val;

  bool hasPlaceOfWork() => _placeOfWork != null;

  // "firstNameAr" field.
  String? _firstNameAr;
  String get firstNameAr => _firstNameAr ?? '';
  set firstNameAr(String? val) => _firstNameAr = val;

  bool hasFirstNameAr() => _firstNameAr != null;

  // "emailVerified" field.
  String? _emailVerified;
  String get emailVerified => _emailVerified ?? '';
  set emailVerified(String? val) => _emailVerified = val;

  bool hasEmailVerified() => _emailVerified != null;

  // "thirdName" field.
  String? _thirdName;
  String get thirdName => _thirdName ?? '';
  set thirdName(String? val) => _thirdName = val;

  bool hasThirdName() => _thirdName != null;

  // "cityCode" field.
  String? _cityCode;
  String get cityCode => _cityCode ?? '';
  set cityCode(String? val) => _cityCode = val;

  bool hasCityCode() => _cityCode != null;

  // "customerStatus" field.
  String? _customerStatus;
  String get customerStatus => _customerStatus ?? '';
  set customerStatus(String? val) => _customerStatus = val;

  bool hasCustomerStatus() => _customerStatus != null;

  // "familyName" field.
  String? _familyName;
  String get familyName => _familyName ?? '';
  set familyName(String? val) => _familyName = val;

  bool hasFamilyName() => _familyName != null;

  static IsRegisteredDataStruct fromMap(Map<String, dynamic> data) =>
      IsRegisteredDataStruct(
        isUsPassportHolder: data['isUsPassportHolder'] as String?,
        pepPosition: data['pepPosition'] as String?,
        address: data['address'] as String?,
        firstName: data['firstName'] as String?,
        mobileNumber2: data['mobileNumber2'] as String?,
        familyNameAr: data['familyNameAr'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        correctionReason: data['correctionReason'] as String?,
        relationShipWithTrueBeneficiary:
            data['relationShipWithTrueBeneficiary'] as String?,
        latinPepFullName: data['latinPepFullName'] as String?,
        isTrueAccountBeneficiary: data['isTrueAccountBeneficiary'] as String?,
        emailAddress: data['emailAddress'] as String?,
        localPepFullName: data['localPepFullName'] as String?,
        thirdNameAr: data['thirdNameAr'] as String?,
        monthlyIncomeUsd: data['monthlyIncomeUsd'] as String?,
        middleName: data['middleName'] as String?,
        motherNameEn: data['motherNameEn'] as String?,
        gender: data['gender'] as String?,
        areaCode: data['areaCode'] as String?,
        middleNameAr: data['middleNameAr'] as String?,
        mobileNumberVerified: data['mobileNumberVerified'] as String?,
        residencyType: data['residencyType'] as String?,
        birthPlace: data['birthPlace'] as String?,
        customerDocuments: data['customerDocuments'] as String?,
        encodedId: data['encodedId'] as String?,
        profession: data['profession'] as String?,
        nationalityCode: data['nationalityCode'] as String?,
        isPEP: data['isPEP'] as String?,
        countryId: data['countryId'] as String?,
        birthDate: data['birthDate'] as String?,
        relationshipWithPep: data['relationshipWithPep'] as String?,
        trueBeneficiaryName: data['trueBeneficiaryName'] as String?,
        isDeviceRegistered: data['isDeviceRegistered'] as String?,
        placeOfWork: data['placeOfWork'] as String?,
        firstNameAr: data['firstNameAr'] as String?,
        emailVerified: data['emailVerified'] as String?,
        thirdName: data['thirdName'] as String?,
        cityCode: data['cityCode'] as String?,
        customerStatus: data['customerStatus'] as String?,
        familyName: data['familyName'] as String?,
      );

  static IsRegisteredDataStruct? maybeFromMap(dynamic data) => data is Map
      ? IsRegisteredDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isUsPassportHolder': _isUsPassportHolder,
        'pepPosition': _pepPosition,
        'address': _address,
        'firstName': _firstName,
        'mobileNumber2': _mobileNumber2,
        'familyNameAr': _familyNameAr,
        'mobileNumber': _mobileNumber,
        'correctionReason': _correctionReason,
        'relationShipWithTrueBeneficiary': _relationShipWithTrueBeneficiary,
        'latinPepFullName': _latinPepFullName,
        'isTrueAccountBeneficiary': _isTrueAccountBeneficiary,
        'emailAddress': _emailAddress,
        'localPepFullName': _localPepFullName,
        'thirdNameAr': _thirdNameAr,
        'monthlyIncomeUsd': _monthlyIncomeUsd,
        'middleName': _middleName,
        'motherNameEn': _motherNameEn,
        'gender': _gender,
        'areaCode': _areaCode,
        'middleNameAr': _middleNameAr,
        'mobileNumberVerified': _mobileNumberVerified,
        'residencyType': _residencyType,
        'birthPlace': _birthPlace,
        'customerDocuments': _customerDocuments,
        'encodedId': _encodedId,
        'profession': _profession,
        'nationalityCode': _nationalityCode,
        'isPEP': _isPEP,
        'countryId': _countryId,
        'birthDate': _birthDate,
        'relationshipWithPep': _relationshipWithPep,
        'trueBeneficiaryName': _trueBeneficiaryName,
        'isDeviceRegistered': _isDeviceRegistered,
        'placeOfWork': _placeOfWork,
        'firstNameAr': _firstNameAr,
        'emailVerified': _emailVerified,
        'thirdName': _thirdName,
        'cityCode': _cityCode,
        'customerStatus': _customerStatus,
        'familyName': _familyName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isUsPassportHolder': serializeParam(
          _isUsPassportHolder,
          ParamType.String,
        ),
        'pepPosition': serializeParam(
          _pepPosition,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'mobileNumber2': serializeParam(
          _mobileNumber2,
          ParamType.String,
        ),
        'familyNameAr': serializeParam(
          _familyNameAr,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'correctionReason': serializeParam(
          _correctionReason,
          ParamType.String,
        ),
        'relationShipWithTrueBeneficiary': serializeParam(
          _relationShipWithTrueBeneficiary,
          ParamType.String,
        ),
        'latinPepFullName': serializeParam(
          _latinPepFullName,
          ParamType.String,
        ),
        'isTrueAccountBeneficiary': serializeParam(
          _isTrueAccountBeneficiary,
          ParamType.String,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'localPepFullName': serializeParam(
          _localPepFullName,
          ParamType.String,
        ),
        'thirdNameAr': serializeParam(
          _thirdNameAr,
          ParamType.String,
        ),
        'monthlyIncomeUsd': serializeParam(
          _monthlyIncomeUsd,
          ParamType.String,
        ),
        'middleName': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'motherNameEn': serializeParam(
          _motherNameEn,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'areaCode': serializeParam(
          _areaCode,
          ParamType.String,
        ),
        'middleNameAr': serializeParam(
          _middleNameAr,
          ParamType.String,
        ),
        'mobileNumberVerified': serializeParam(
          _mobileNumberVerified,
          ParamType.String,
        ),
        'residencyType': serializeParam(
          _residencyType,
          ParamType.String,
        ),
        'birthPlace': serializeParam(
          _birthPlace,
          ParamType.String,
        ),
        'customerDocuments': serializeParam(
          _customerDocuments,
          ParamType.String,
        ),
        'encodedId': serializeParam(
          _encodedId,
          ParamType.String,
        ),
        'profession': serializeParam(
          _profession,
          ParamType.String,
        ),
        'nationalityCode': serializeParam(
          _nationalityCode,
          ParamType.String,
        ),
        'isPEP': serializeParam(
          _isPEP,
          ParamType.String,
        ),
        'countryId': serializeParam(
          _countryId,
          ParamType.String,
        ),
        'birthDate': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'relationshipWithPep': serializeParam(
          _relationshipWithPep,
          ParamType.String,
        ),
        'trueBeneficiaryName': serializeParam(
          _trueBeneficiaryName,
          ParamType.String,
        ),
        'isDeviceRegistered': serializeParam(
          _isDeviceRegistered,
          ParamType.String,
        ),
        'placeOfWork': serializeParam(
          _placeOfWork,
          ParamType.String,
        ),
        'firstNameAr': serializeParam(
          _firstNameAr,
          ParamType.String,
        ),
        'emailVerified': serializeParam(
          _emailVerified,
          ParamType.String,
        ),
        'thirdName': serializeParam(
          _thirdName,
          ParamType.String,
        ),
        'cityCode': serializeParam(
          _cityCode,
          ParamType.String,
        ),
        'customerStatus': serializeParam(
          _customerStatus,
          ParamType.String,
        ),
        'familyName': serializeParam(
          _familyName,
          ParamType.String,
        ),
      }.withoutNulls;

  static IsRegisteredDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IsRegisteredDataStruct(
        isUsPassportHolder: deserializeParam(
          data['isUsPassportHolder'],
          ParamType.String,
          false,
        ),
        pepPosition: deserializeParam(
          data['pepPosition'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        mobileNumber2: deserializeParam(
          data['mobileNumber2'],
          ParamType.String,
          false,
        ),
        familyNameAr: deserializeParam(
          data['familyNameAr'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        correctionReason: deserializeParam(
          data['correctionReason'],
          ParamType.String,
          false,
        ),
        relationShipWithTrueBeneficiary: deserializeParam(
          data['relationShipWithTrueBeneficiary'],
          ParamType.String,
          false,
        ),
        latinPepFullName: deserializeParam(
          data['latinPepFullName'],
          ParamType.String,
          false,
        ),
        isTrueAccountBeneficiary: deserializeParam(
          data['isTrueAccountBeneficiary'],
          ParamType.String,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
        localPepFullName: deserializeParam(
          data['localPepFullName'],
          ParamType.String,
          false,
        ),
        thirdNameAr: deserializeParam(
          data['thirdNameAr'],
          ParamType.String,
          false,
        ),
        monthlyIncomeUsd: deserializeParam(
          data['monthlyIncomeUsd'],
          ParamType.String,
          false,
        ),
        middleName: deserializeParam(
          data['middleName'],
          ParamType.String,
          false,
        ),
        motherNameEn: deserializeParam(
          data['motherNameEn'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        areaCode: deserializeParam(
          data['areaCode'],
          ParamType.String,
          false,
        ),
        middleNameAr: deserializeParam(
          data['middleNameAr'],
          ParamType.String,
          false,
        ),
        mobileNumberVerified: deserializeParam(
          data['mobileNumberVerified'],
          ParamType.String,
          false,
        ),
        residencyType: deserializeParam(
          data['residencyType'],
          ParamType.String,
          false,
        ),
        birthPlace: deserializeParam(
          data['birthPlace'],
          ParamType.String,
          false,
        ),
        customerDocuments: deserializeParam(
          data['customerDocuments'],
          ParamType.String,
          false,
        ),
        encodedId: deserializeParam(
          data['encodedId'],
          ParamType.String,
          false,
        ),
        profession: deserializeParam(
          data['profession'],
          ParamType.String,
          false,
        ),
        nationalityCode: deserializeParam(
          data['nationalityCode'],
          ParamType.String,
          false,
        ),
        isPEP: deserializeParam(
          data['isPEP'],
          ParamType.String,
          false,
        ),
        countryId: deserializeParam(
          data['countryId'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birthDate'],
          ParamType.String,
          false,
        ),
        relationshipWithPep: deserializeParam(
          data['relationshipWithPep'],
          ParamType.String,
          false,
        ),
        trueBeneficiaryName: deserializeParam(
          data['trueBeneficiaryName'],
          ParamType.String,
          false,
        ),
        isDeviceRegistered: deserializeParam(
          data['isDeviceRegistered'],
          ParamType.String,
          false,
        ),
        placeOfWork: deserializeParam(
          data['placeOfWork'],
          ParamType.String,
          false,
        ),
        firstNameAr: deserializeParam(
          data['firstNameAr'],
          ParamType.String,
          false,
        ),
        emailVerified: deserializeParam(
          data['emailVerified'],
          ParamType.String,
          false,
        ),
        thirdName: deserializeParam(
          data['thirdName'],
          ParamType.String,
          false,
        ),
        cityCode: deserializeParam(
          data['cityCode'],
          ParamType.String,
          false,
        ),
        customerStatus: deserializeParam(
          data['customerStatus'],
          ParamType.String,
          false,
        ),
        familyName: deserializeParam(
          data['familyName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IsRegisteredDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IsRegisteredDataStruct &&
        isUsPassportHolder == other.isUsPassportHolder &&
        pepPosition == other.pepPosition &&
        address == other.address &&
        firstName == other.firstName &&
        mobileNumber2 == other.mobileNumber2 &&
        familyNameAr == other.familyNameAr &&
        mobileNumber == other.mobileNumber &&
        correctionReason == other.correctionReason &&
        relationShipWithTrueBeneficiary ==
            other.relationShipWithTrueBeneficiary &&
        latinPepFullName == other.latinPepFullName &&
        isTrueAccountBeneficiary == other.isTrueAccountBeneficiary &&
        emailAddress == other.emailAddress &&
        localPepFullName == other.localPepFullName &&
        thirdNameAr == other.thirdNameAr &&
        monthlyIncomeUsd == other.monthlyIncomeUsd &&
        middleName == other.middleName &&
        motherNameEn == other.motherNameEn &&
        gender == other.gender &&
        areaCode == other.areaCode &&
        middleNameAr == other.middleNameAr &&
        mobileNumberVerified == other.mobileNumberVerified &&
        residencyType == other.residencyType &&
        birthPlace == other.birthPlace &&
        customerDocuments == other.customerDocuments &&
        encodedId == other.encodedId &&
        profession == other.profession &&
        nationalityCode == other.nationalityCode &&
        isPEP == other.isPEP &&
        countryId == other.countryId &&
        birthDate == other.birthDate &&
        relationshipWithPep == other.relationshipWithPep &&
        trueBeneficiaryName == other.trueBeneficiaryName &&
        isDeviceRegistered == other.isDeviceRegistered &&
        placeOfWork == other.placeOfWork &&
        firstNameAr == other.firstNameAr &&
        emailVerified == other.emailVerified &&
        thirdName == other.thirdName &&
        cityCode == other.cityCode &&
        customerStatus == other.customerStatus &&
        familyName == other.familyName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isUsPassportHolder,
        pepPosition,
        address,
        firstName,
        mobileNumber2,
        familyNameAr,
        mobileNumber,
        correctionReason,
        relationShipWithTrueBeneficiary,
        latinPepFullName,
        isTrueAccountBeneficiary,
        emailAddress,
        localPepFullName,
        thirdNameAr,
        monthlyIncomeUsd,
        middleName,
        motherNameEn,
        gender,
        areaCode,
        middleNameAr,
        mobileNumberVerified,
        residencyType,
        birthPlace,
        customerDocuments,
        encodedId,
        profession,
        nationalityCode,
        isPEP,
        countryId,
        birthDate,
        relationshipWithPep,
        trueBeneficiaryName,
        isDeviceRegistered,
        placeOfWork,
        firstNameAr,
        emailVerified,
        thirdName,
        cityCode,
        customerStatus,
        familyName
      ]);
}

IsRegisteredDataStruct createIsRegisteredDataStruct({
  String? isUsPassportHolder,
  String? pepPosition,
  String? address,
  String? firstName,
  String? mobileNumber2,
  String? familyNameAr,
  String? mobileNumber,
  String? correctionReason,
  String? relationShipWithTrueBeneficiary,
  String? latinPepFullName,
  String? isTrueAccountBeneficiary,
  String? emailAddress,
  String? localPepFullName,
  String? thirdNameAr,
  String? monthlyIncomeUsd,
  String? middleName,
  String? motherNameEn,
  String? gender,
  String? areaCode,
  String? middleNameAr,
  String? mobileNumberVerified,
  String? residencyType,
  String? birthPlace,
  String? customerDocuments,
  String? encodedId,
  String? profession,
  String? nationalityCode,
  String? isPEP,
  String? countryId,
  String? birthDate,
  String? relationshipWithPep,
  String? trueBeneficiaryName,
  String? isDeviceRegistered,
  String? placeOfWork,
  String? firstNameAr,
  String? emailVerified,
  String? thirdName,
  String? cityCode,
  String? customerStatus,
  String? familyName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IsRegisteredDataStruct(
      isUsPassportHolder: isUsPassportHolder,
      pepPosition: pepPosition,
      address: address,
      firstName: firstName,
      mobileNumber2: mobileNumber2,
      familyNameAr: familyNameAr,
      mobileNumber: mobileNumber,
      correctionReason: correctionReason,
      relationShipWithTrueBeneficiary: relationShipWithTrueBeneficiary,
      latinPepFullName: latinPepFullName,
      isTrueAccountBeneficiary: isTrueAccountBeneficiary,
      emailAddress: emailAddress,
      localPepFullName: localPepFullName,
      thirdNameAr: thirdNameAr,
      monthlyIncomeUsd: monthlyIncomeUsd,
      middleName: middleName,
      motherNameEn: motherNameEn,
      gender: gender,
      areaCode: areaCode,
      middleNameAr: middleNameAr,
      mobileNumberVerified: mobileNumberVerified,
      residencyType: residencyType,
      birthPlace: birthPlace,
      customerDocuments: customerDocuments,
      encodedId: encodedId,
      profession: profession,
      nationalityCode: nationalityCode,
      isPEP: isPEP,
      countryId: countryId,
      birthDate: birthDate,
      relationshipWithPep: relationshipWithPep,
      trueBeneficiaryName: trueBeneficiaryName,
      isDeviceRegistered: isDeviceRegistered,
      placeOfWork: placeOfWork,
      firstNameAr: firstNameAr,
      emailVerified: emailVerified,
      thirdName: thirdName,
      cityCode: cityCode,
      customerStatus: customerStatus,
      familyName: familyName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IsRegisteredDataStruct? updateIsRegisteredDataStruct(
  IsRegisteredDataStruct? isRegisteredData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    isRegisteredData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIsRegisteredDataStructData(
  Map<String, dynamic> firestoreData,
  IsRegisteredDataStruct? isRegisteredData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (isRegisteredData == null) {
    return;
  }
  if (isRegisteredData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && isRegisteredData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final isRegisteredDataData =
      getIsRegisteredDataFirestoreData(isRegisteredData, forFieldValue);
  final nestedData =
      isRegisteredDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = isRegisteredData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIsRegisteredDataFirestoreData(
  IsRegisteredDataStruct? isRegisteredData, [
  bool forFieldValue = false,
]) {
  if (isRegisteredData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(isRegisteredData.toMap());

  // Add any Firestore field values
  isRegisteredData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIsRegisteredDataListFirestoreData(
  List<IsRegisteredDataStruct>? isRegisteredDatas,
) =>
    isRegisteredDatas
        ?.map((e) => getIsRegisteredDataFirestoreData(e, true))
        .toList() ??
    [];
