// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthenticatedUserStruct extends BaseStruct {
  AuthenticatedUserStruct({
    String? correctionReason,
    String? pepPosition,
    String? thirdNameAr,
    String? gender,
    String? middleNameAr,
    String? mobileNumber,
    String? cityCode,
    List<CustomerDocumentsStruct>? customerDocuments,
    String? mobileNumberVerified,
    String? thirdName,
    String? idNumber,
    String? countryId,
    String? customerStatus,
    String? trueBeneficiaryName,
    String? birthPlace,
    String? emailAddress,
    String? nationalityCode,
    String? localPepFullName,
    bool? isUsPassportHolder,
    String? motherNameEn,
    String? relationShipWithTrueBeneficiary,
    String? familyName,
    String? relationshipWithPep,
    String? placeOfWork,
    String? familyNameAr,
    String? latinPepFullName,
    String? profession,
    bool? isMissingDocuments,
    String? idType,
    String? address,
    String? mobileNumber2,
    String? mobileNumberPrefix,
    bool? isPEP,
    String? encodedId,
    String? birthDate,
    String? firstName,
    String? emailVerified,
    String? areaCode,
    bool? isTrueAccountBeneficiary,
    bool? isDeviceRegistered,
    String? middleName,
    String? firstNameAr,
    String? monthlyIncomeUsd,
    String? residencyType,
    String? accessToken,
  })  : _correctionReason = correctionReason,
        _pepPosition = pepPosition,
        _thirdNameAr = thirdNameAr,
        _gender = gender,
        _middleNameAr = middleNameAr,
        _mobileNumber = mobileNumber,
        _cityCode = cityCode,
        _customerDocuments = customerDocuments,
        _mobileNumberVerified = mobileNumberVerified,
        _thirdName = thirdName,
        _idNumber = idNumber,
        _countryId = countryId,
        _customerStatus = customerStatus,
        _trueBeneficiaryName = trueBeneficiaryName,
        _birthPlace = birthPlace,
        _emailAddress = emailAddress,
        _nationalityCode = nationalityCode,
        _localPepFullName = localPepFullName,
        _isUsPassportHolder = isUsPassportHolder,
        _motherNameEn = motherNameEn,
        _relationShipWithTrueBeneficiary = relationShipWithTrueBeneficiary,
        _familyName = familyName,
        _relationshipWithPep = relationshipWithPep,
        _placeOfWork = placeOfWork,
        _familyNameAr = familyNameAr,
        _latinPepFullName = latinPepFullName,
        _profession = profession,
        _isMissingDocuments = isMissingDocuments,
        _idType = idType,
        _address = address,
        _mobileNumber2 = mobileNumber2,
        _mobileNumberPrefix = mobileNumberPrefix,
        _isPEP = isPEP,
        _encodedId = encodedId,
        _birthDate = birthDate,
        _firstName = firstName,
        _emailVerified = emailVerified,
        _areaCode = areaCode,
        _isTrueAccountBeneficiary = isTrueAccountBeneficiary,
        _isDeviceRegistered = isDeviceRegistered,
        _middleName = middleName,
        _firstNameAr = firstNameAr,
        _monthlyIncomeUsd = monthlyIncomeUsd,
        _residencyType = residencyType,
        _accessToken = accessToken;

  // "correctionReason" field.
  String? _correctionReason;
  String get correctionReason => _correctionReason ?? '';
  set correctionReason(String? val) => _correctionReason = val;

  bool hasCorrectionReason() => _correctionReason != null;

  // "pepPosition" field.
  String? _pepPosition;
  String get pepPosition => _pepPosition ?? '';
  set pepPosition(String? val) => _pepPosition = val;

  bool hasPepPosition() => _pepPosition != null;

  // "thirdNameAr" field.
  String? _thirdNameAr;
  String get thirdNameAr => _thirdNameAr ?? '';
  set thirdNameAr(String? val) => _thirdNameAr = val;

  bool hasThirdNameAr() => _thirdNameAr != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "middleNameAr" field.
  String? _middleNameAr;
  String get middleNameAr => _middleNameAr ?? '';
  set middleNameAr(String? val) => _middleNameAr = val;

  bool hasMiddleNameAr() => _middleNameAr != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "cityCode" field.
  String? _cityCode;
  String get cityCode => _cityCode ?? '';
  set cityCode(String? val) => _cityCode = val;

  bool hasCityCode() => _cityCode != null;

  // "customerDocuments" field.
  List<CustomerDocumentsStruct>? _customerDocuments;
  List<CustomerDocumentsStruct> get customerDocuments =>
      _customerDocuments ?? const [];
  set customerDocuments(List<CustomerDocumentsStruct>? val) =>
      _customerDocuments = val;

  void updateCustomerDocuments(
      Function(List<CustomerDocumentsStruct>) updateFn) {
    updateFn(_customerDocuments ??= []);
  }

  bool hasCustomerDocuments() => _customerDocuments != null;

  // "mobileNumberVerified" field.
  String? _mobileNumberVerified;
  String get mobileNumberVerified => _mobileNumberVerified ?? '';
  set mobileNumberVerified(String? val) => _mobileNumberVerified = val;

  bool hasMobileNumberVerified() => _mobileNumberVerified != null;

  // "thirdName" field.
  String? _thirdName;
  String get thirdName => _thirdName ?? '';
  set thirdName(String? val) => _thirdName = val;

  bool hasThirdName() => _thirdName != null;

  // "idNumber" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  set idNumber(String? val) => _idNumber = val;

  bool hasIdNumber() => _idNumber != null;

  // "countryId" field.
  String? _countryId;
  String get countryId => _countryId ?? '';
  set countryId(String? val) => _countryId = val;

  bool hasCountryId() => _countryId != null;

  // "customerStatus" field.
  String? _customerStatus;
  String get customerStatus => _customerStatus ?? '';
  set customerStatus(String? val) => _customerStatus = val;

  bool hasCustomerStatus() => _customerStatus != null;

  // "trueBeneficiaryName" field.
  String? _trueBeneficiaryName;
  String get trueBeneficiaryName => _trueBeneficiaryName ?? '';
  set trueBeneficiaryName(String? val) => _trueBeneficiaryName = val;

  bool hasTrueBeneficiaryName() => _trueBeneficiaryName != null;

  // "birthPlace" field.
  String? _birthPlace;
  String get birthPlace => _birthPlace ?? '';
  set birthPlace(String? val) => _birthPlace = val;

  bool hasBirthPlace() => _birthPlace != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;

  bool hasEmailAddress() => _emailAddress != null;

  // "nationalityCode" field.
  String? _nationalityCode;
  String get nationalityCode => _nationalityCode ?? '';
  set nationalityCode(String? val) => _nationalityCode = val;

  bool hasNationalityCode() => _nationalityCode != null;

  // "localPepFullName" field.
  String? _localPepFullName;
  String get localPepFullName => _localPepFullName ?? '';
  set localPepFullName(String? val) => _localPepFullName = val;

  bool hasLocalPepFullName() => _localPepFullName != null;

  // "isUsPassportHolder" field.
  bool? _isUsPassportHolder;
  bool get isUsPassportHolder => _isUsPassportHolder ?? false;
  set isUsPassportHolder(bool? val) => _isUsPassportHolder = val;

  bool hasIsUsPassportHolder() => _isUsPassportHolder != null;

  // "motherNameEn" field.
  String? _motherNameEn;
  String get motherNameEn => _motherNameEn ?? '';
  set motherNameEn(String? val) => _motherNameEn = val;

  bool hasMotherNameEn() => _motherNameEn != null;

  // "relationShipWithTrueBeneficiary" field.
  String? _relationShipWithTrueBeneficiary;
  String get relationShipWithTrueBeneficiary =>
      _relationShipWithTrueBeneficiary ?? '';
  set relationShipWithTrueBeneficiary(String? val) =>
      _relationShipWithTrueBeneficiary = val;

  bool hasRelationShipWithTrueBeneficiary() =>
      _relationShipWithTrueBeneficiary != null;

  // "familyName" field.
  String? _familyName;
  String get familyName => _familyName ?? '';
  set familyName(String? val) => _familyName = val;

  bool hasFamilyName() => _familyName != null;

  // "relationshipWithPep" field.
  String? _relationshipWithPep;
  String get relationshipWithPep => _relationshipWithPep ?? '';
  set relationshipWithPep(String? val) => _relationshipWithPep = val;

  bool hasRelationshipWithPep() => _relationshipWithPep != null;

  // "placeOfWork" field.
  String? _placeOfWork;
  String get placeOfWork => _placeOfWork ?? '';
  set placeOfWork(String? val) => _placeOfWork = val;

  bool hasPlaceOfWork() => _placeOfWork != null;

  // "familyNameAr" field.
  String? _familyNameAr;
  String get familyNameAr => _familyNameAr ?? '';
  set familyNameAr(String? val) => _familyNameAr = val;

  bool hasFamilyNameAr() => _familyNameAr != null;

  // "latinPepFullName" field.
  String? _latinPepFullName;
  String get latinPepFullName => _latinPepFullName ?? '';
  set latinPepFullName(String? val) => _latinPepFullName = val;

  bool hasLatinPepFullName() => _latinPepFullName != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  set profession(String? val) => _profession = val;

  bool hasProfession() => _profession != null;

  // "isMissingDocuments" field.
  bool? _isMissingDocuments;
  bool get isMissingDocuments => _isMissingDocuments ?? false;
  set isMissingDocuments(bool? val) => _isMissingDocuments = val;

  bool hasIsMissingDocuments() => _isMissingDocuments != null;

  // "idType" field.
  String? _idType;
  String get idType => _idType ?? '';
  set idType(String? val) => _idType = val;

  bool hasIdType() => _idType != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "mobileNumber2" field.
  String? _mobileNumber2;
  String get mobileNumber2 => _mobileNumber2 ?? '';
  set mobileNumber2(String? val) => _mobileNumber2 = val;

  bool hasMobileNumber2() => _mobileNumber2 != null;

  // "mobileNumberPrefix" field.
  String? _mobileNumberPrefix;
  String get mobileNumberPrefix => _mobileNumberPrefix ?? '';
  set mobileNumberPrefix(String? val) => _mobileNumberPrefix = val;

  bool hasMobileNumberPrefix() => _mobileNumberPrefix != null;

  // "isPEP" field.
  bool? _isPEP;
  bool get isPEP => _isPEP ?? false;
  set isPEP(bool? val) => _isPEP = val;

  bool hasIsPEP() => _isPEP != null;

  // "encodedId" field.
  String? _encodedId;
  String get encodedId => _encodedId ?? '';
  set encodedId(String? val) => _encodedId = val;

  bool hasEncodedId() => _encodedId != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "emailVerified" field.
  String? _emailVerified;
  String get emailVerified => _emailVerified ?? '';
  set emailVerified(String? val) => _emailVerified = val;

  bool hasEmailVerified() => _emailVerified != null;

  // "areaCode" field.
  String? _areaCode;
  String get areaCode => _areaCode ?? '';
  set areaCode(String? val) => _areaCode = val;

  bool hasAreaCode() => _areaCode != null;

  // "isTrueAccountBeneficiary" field.
  bool? _isTrueAccountBeneficiary;
  bool get isTrueAccountBeneficiary => _isTrueAccountBeneficiary ?? false;
  set isTrueAccountBeneficiary(bool? val) => _isTrueAccountBeneficiary = val;

  bool hasIsTrueAccountBeneficiary() => _isTrueAccountBeneficiary != null;

  // "isDeviceRegistered" field.
  bool? _isDeviceRegistered;
  bool get isDeviceRegistered => _isDeviceRegistered ?? false;
  set isDeviceRegistered(bool? val) => _isDeviceRegistered = val;

  bool hasIsDeviceRegistered() => _isDeviceRegistered != null;

  // "middleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;

  bool hasMiddleName() => _middleName != null;

  // "firstNameAr" field.
  String? _firstNameAr;
  String get firstNameAr => _firstNameAr ?? '';
  set firstNameAr(String? val) => _firstNameAr = val;

  bool hasFirstNameAr() => _firstNameAr != null;

  // "monthlyIncomeUsd" field.
  String? _monthlyIncomeUsd;
  String get monthlyIncomeUsd => _monthlyIncomeUsd ?? '';
  set monthlyIncomeUsd(String? val) => _monthlyIncomeUsd = val;

  bool hasMonthlyIncomeUsd() => _monthlyIncomeUsd != null;

  // "residencyType" field.
  String? _residencyType;
  String get residencyType => _residencyType ?? '';
  set residencyType(String? val) => _residencyType = val;

  bool hasResidencyType() => _residencyType != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  static AuthenticatedUserStruct fromMap(Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        correctionReason: data['correctionReason'] as String?,
        pepPosition: data['pepPosition'] as String?,
        thirdNameAr: data['thirdNameAr'] as String?,
        gender: data['gender'] as String?,
        middleNameAr: data['middleNameAr'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        cityCode: data['cityCode'] as String?,
        customerDocuments: getStructList(
          data['customerDocuments'],
          CustomerDocumentsStruct.fromMap,
        ),
        mobileNumberVerified: data['mobileNumberVerified'] as String?,
        thirdName: data['thirdName'] as String?,
        idNumber: data['idNumber'] as String?,
        countryId: data['countryId'] as String?,
        customerStatus: data['customerStatus'] as String?,
        trueBeneficiaryName: data['trueBeneficiaryName'] as String?,
        birthPlace: data['birthPlace'] as String?,
        emailAddress: data['emailAddress'] as String?,
        nationalityCode: data['nationalityCode'] as String?,
        localPepFullName: data['localPepFullName'] as String?,
        isUsPassportHolder: data['isUsPassportHolder'] as bool?,
        motherNameEn: data['motherNameEn'] as String?,
        relationShipWithTrueBeneficiary:
            data['relationShipWithTrueBeneficiary'] as String?,
        familyName: data['familyName'] as String?,
        relationshipWithPep: data['relationshipWithPep'] as String?,
        placeOfWork: data['placeOfWork'] as String?,
        familyNameAr: data['familyNameAr'] as String?,
        latinPepFullName: data['latinPepFullName'] as String?,
        profession: data['profession'] as String?,
        isMissingDocuments: data['isMissingDocuments'] as bool?,
        idType: data['idType'] as String?,
        address: data['address'] as String?,
        mobileNumber2: data['mobileNumber2'] as String?,
        mobileNumberPrefix: data['mobileNumberPrefix'] as String?,
        isPEP: data['isPEP'] as bool?,
        encodedId: data['encodedId'] as String?,
        birthDate: data['birthDate'] as String?,
        firstName: data['firstName'] as String?,
        emailVerified: data['emailVerified'] as String?,
        areaCode: data['areaCode'] as String?,
        isTrueAccountBeneficiary: data['isTrueAccountBeneficiary'] as bool?,
        isDeviceRegistered: data['isDeviceRegistered'] as bool?,
        middleName: data['middleName'] as String?,
        firstNameAr: data['firstNameAr'] as String?,
        monthlyIncomeUsd: data['monthlyIncomeUsd'] as String?,
        residencyType: data['residencyType'] as String?,
        accessToken: data['accessToken'] as String?,
      );

  static AuthenticatedUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthenticatedUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'correctionReason': _correctionReason,
        'pepPosition': _pepPosition,
        'thirdNameAr': _thirdNameAr,
        'gender': _gender,
        'middleNameAr': _middleNameAr,
        'mobileNumber': _mobileNumber,
        'cityCode': _cityCode,
        'customerDocuments': _customerDocuments?.map((e) => e.toMap()).toList(),
        'mobileNumberVerified': _mobileNumberVerified,
        'thirdName': _thirdName,
        'idNumber': _idNumber,
        'countryId': _countryId,
        'customerStatus': _customerStatus,
        'trueBeneficiaryName': _trueBeneficiaryName,
        'birthPlace': _birthPlace,
        'emailAddress': _emailAddress,
        'nationalityCode': _nationalityCode,
        'localPepFullName': _localPepFullName,
        'isUsPassportHolder': _isUsPassportHolder,
        'motherNameEn': _motherNameEn,
        'relationShipWithTrueBeneficiary': _relationShipWithTrueBeneficiary,
        'familyName': _familyName,
        'relationshipWithPep': _relationshipWithPep,
        'placeOfWork': _placeOfWork,
        'familyNameAr': _familyNameAr,
        'latinPepFullName': _latinPepFullName,
        'profession': _profession,
        'isMissingDocuments': _isMissingDocuments,
        'idType': _idType,
        'address': _address,
        'mobileNumber2': _mobileNumber2,
        'mobileNumberPrefix': _mobileNumberPrefix,
        'isPEP': _isPEP,
        'encodedId': _encodedId,
        'birthDate': _birthDate,
        'firstName': _firstName,
        'emailVerified': _emailVerified,
        'areaCode': _areaCode,
        'isTrueAccountBeneficiary': _isTrueAccountBeneficiary,
        'isDeviceRegistered': _isDeviceRegistered,
        'middleName': _middleName,
        'firstNameAr': _firstNameAr,
        'monthlyIncomeUsd': _monthlyIncomeUsd,
        'residencyType': _residencyType,
        'accessToken': _accessToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'correctionReason': serializeParam(
          _correctionReason,
          ParamType.String,
        ),
        'pepPosition': serializeParam(
          _pepPosition,
          ParamType.String,
        ),
        'thirdNameAr': serializeParam(
          _thirdNameAr,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'middleNameAr': serializeParam(
          _middleNameAr,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'cityCode': serializeParam(
          _cityCode,
          ParamType.String,
        ),
        'customerDocuments': serializeParam(
          _customerDocuments,
          ParamType.DataStruct,
          isList: true,
        ),
        'mobileNumberVerified': serializeParam(
          _mobileNumberVerified,
          ParamType.String,
        ),
        'thirdName': serializeParam(
          _thirdName,
          ParamType.String,
        ),
        'idNumber': serializeParam(
          _idNumber,
          ParamType.String,
        ),
        'countryId': serializeParam(
          _countryId,
          ParamType.String,
        ),
        'customerStatus': serializeParam(
          _customerStatus,
          ParamType.String,
        ),
        'trueBeneficiaryName': serializeParam(
          _trueBeneficiaryName,
          ParamType.String,
        ),
        'birthPlace': serializeParam(
          _birthPlace,
          ParamType.String,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'nationalityCode': serializeParam(
          _nationalityCode,
          ParamType.String,
        ),
        'localPepFullName': serializeParam(
          _localPepFullName,
          ParamType.String,
        ),
        'isUsPassportHolder': serializeParam(
          _isUsPassportHolder,
          ParamType.bool,
        ),
        'motherNameEn': serializeParam(
          _motherNameEn,
          ParamType.String,
        ),
        'relationShipWithTrueBeneficiary': serializeParam(
          _relationShipWithTrueBeneficiary,
          ParamType.String,
        ),
        'familyName': serializeParam(
          _familyName,
          ParamType.String,
        ),
        'relationshipWithPep': serializeParam(
          _relationshipWithPep,
          ParamType.String,
        ),
        'placeOfWork': serializeParam(
          _placeOfWork,
          ParamType.String,
        ),
        'familyNameAr': serializeParam(
          _familyNameAr,
          ParamType.String,
        ),
        'latinPepFullName': serializeParam(
          _latinPepFullName,
          ParamType.String,
        ),
        'profession': serializeParam(
          _profession,
          ParamType.String,
        ),
        'isMissingDocuments': serializeParam(
          _isMissingDocuments,
          ParamType.bool,
        ),
        'idType': serializeParam(
          _idType,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'mobileNumber2': serializeParam(
          _mobileNumber2,
          ParamType.String,
        ),
        'mobileNumberPrefix': serializeParam(
          _mobileNumberPrefix,
          ParamType.String,
        ),
        'isPEP': serializeParam(
          _isPEP,
          ParamType.bool,
        ),
        'encodedId': serializeParam(
          _encodedId,
          ParamType.String,
        ),
        'birthDate': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'emailVerified': serializeParam(
          _emailVerified,
          ParamType.String,
        ),
        'areaCode': serializeParam(
          _areaCode,
          ParamType.String,
        ),
        'isTrueAccountBeneficiary': serializeParam(
          _isTrueAccountBeneficiary,
          ParamType.bool,
        ),
        'isDeviceRegistered': serializeParam(
          _isDeviceRegistered,
          ParamType.bool,
        ),
        'middleName': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'firstNameAr': serializeParam(
          _firstNameAr,
          ParamType.String,
        ),
        'monthlyIncomeUsd': serializeParam(
          _monthlyIncomeUsd,
          ParamType.String,
        ),
        'residencyType': serializeParam(
          _residencyType,
          ParamType.String,
        ),
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthenticatedUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        correctionReason: deserializeParam(
          data['correctionReason'],
          ParamType.String,
          false,
        ),
        pepPosition: deserializeParam(
          data['pepPosition'],
          ParamType.String,
          false,
        ),
        thirdNameAr: deserializeParam(
          data['thirdNameAr'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        middleNameAr: deserializeParam(
          data['middleNameAr'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        cityCode: deserializeParam(
          data['cityCode'],
          ParamType.String,
          false,
        ),
        customerDocuments: deserializeStructParam<CustomerDocumentsStruct>(
          data['customerDocuments'],
          ParamType.DataStruct,
          true,
          structBuilder: CustomerDocumentsStruct.fromSerializableMap,
        ),
        mobileNumberVerified: deserializeParam(
          data['mobileNumberVerified'],
          ParamType.String,
          false,
        ),
        thirdName: deserializeParam(
          data['thirdName'],
          ParamType.String,
          false,
        ),
        idNumber: deserializeParam(
          data['idNumber'],
          ParamType.String,
          false,
        ),
        countryId: deserializeParam(
          data['countryId'],
          ParamType.String,
          false,
        ),
        customerStatus: deserializeParam(
          data['customerStatus'],
          ParamType.String,
          false,
        ),
        trueBeneficiaryName: deserializeParam(
          data['trueBeneficiaryName'],
          ParamType.String,
          false,
        ),
        birthPlace: deserializeParam(
          data['birthPlace'],
          ParamType.String,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
        nationalityCode: deserializeParam(
          data['nationalityCode'],
          ParamType.String,
          false,
        ),
        localPepFullName: deserializeParam(
          data['localPepFullName'],
          ParamType.String,
          false,
        ),
        isUsPassportHolder: deserializeParam(
          data['isUsPassportHolder'],
          ParamType.bool,
          false,
        ),
        motherNameEn: deserializeParam(
          data['motherNameEn'],
          ParamType.String,
          false,
        ),
        relationShipWithTrueBeneficiary: deserializeParam(
          data['relationShipWithTrueBeneficiary'],
          ParamType.String,
          false,
        ),
        familyName: deserializeParam(
          data['familyName'],
          ParamType.String,
          false,
        ),
        relationshipWithPep: deserializeParam(
          data['relationshipWithPep'],
          ParamType.String,
          false,
        ),
        placeOfWork: deserializeParam(
          data['placeOfWork'],
          ParamType.String,
          false,
        ),
        familyNameAr: deserializeParam(
          data['familyNameAr'],
          ParamType.String,
          false,
        ),
        latinPepFullName: deserializeParam(
          data['latinPepFullName'],
          ParamType.String,
          false,
        ),
        profession: deserializeParam(
          data['profession'],
          ParamType.String,
          false,
        ),
        isMissingDocuments: deserializeParam(
          data['isMissingDocuments'],
          ParamType.bool,
          false,
        ),
        idType: deserializeParam(
          data['idType'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        mobileNumber2: deserializeParam(
          data['mobileNumber2'],
          ParamType.String,
          false,
        ),
        mobileNumberPrefix: deserializeParam(
          data['mobileNumberPrefix'],
          ParamType.String,
          false,
        ),
        isPEP: deserializeParam(
          data['isPEP'],
          ParamType.bool,
          false,
        ),
        encodedId: deserializeParam(
          data['encodedId'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birthDate'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        emailVerified: deserializeParam(
          data['emailVerified'],
          ParamType.String,
          false,
        ),
        areaCode: deserializeParam(
          data['areaCode'],
          ParamType.String,
          false,
        ),
        isTrueAccountBeneficiary: deserializeParam(
          data['isTrueAccountBeneficiary'],
          ParamType.bool,
          false,
        ),
        isDeviceRegistered: deserializeParam(
          data['isDeviceRegistered'],
          ParamType.bool,
          false,
        ),
        middleName: deserializeParam(
          data['middleName'],
          ParamType.String,
          false,
        ),
        firstNameAr: deserializeParam(
          data['firstNameAr'],
          ParamType.String,
          false,
        ),
        monthlyIncomeUsd: deserializeParam(
          data['monthlyIncomeUsd'],
          ParamType.String,
          false,
        ),
        residencyType: deserializeParam(
          data['residencyType'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthenticatedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AuthenticatedUserStruct &&
        correctionReason == other.correctionReason &&
        pepPosition == other.pepPosition &&
        thirdNameAr == other.thirdNameAr &&
        gender == other.gender &&
        middleNameAr == other.middleNameAr &&
        mobileNumber == other.mobileNumber &&
        cityCode == other.cityCode &&
        listEquality.equals(customerDocuments, other.customerDocuments) &&
        mobileNumberVerified == other.mobileNumberVerified &&
        thirdName == other.thirdName &&
        idNumber == other.idNumber &&
        countryId == other.countryId &&
        customerStatus == other.customerStatus &&
        trueBeneficiaryName == other.trueBeneficiaryName &&
        birthPlace == other.birthPlace &&
        emailAddress == other.emailAddress &&
        nationalityCode == other.nationalityCode &&
        localPepFullName == other.localPepFullName &&
        isUsPassportHolder == other.isUsPassportHolder &&
        motherNameEn == other.motherNameEn &&
        relationShipWithTrueBeneficiary ==
            other.relationShipWithTrueBeneficiary &&
        familyName == other.familyName &&
        relationshipWithPep == other.relationshipWithPep &&
        placeOfWork == other.placeOfWork &&
        familyNameAr == other.familyNameAr &&
        latinPepFullName == other.latinPepFullName &&
        profession == other.profession &&
        isMissingDocuments == other.isMissingDocuments &&
        idType == other.idType &&
        address == other.address &&
        mobileNumber2 == other.mobileNumber2 &&
        mobileNumberPrefix == other.mobileNumberPrefix &&
        isPEP == other.isPEP &&
        encodedId == other.encodedId &&
        birthDate == other.birthDate &&
        firstName == other.firstName &&
        emailVerified == other.emailVerified &&
        areaCode == other.areaCode &&
        isTrueAccountBeneficiary == other.isTrueAccountBeneficiary &&
        isDeviceRegistered == other.isDeviceRegistered &&
        middleName == other.middleName &&
        firstNameAr == other.firstNameAr &&
        monthlyIncomeUsd == other.monthlyIncomeUsd &&
        residencyType == other.residencyType &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode => const ListEquality().hash([
        correctionReason,
        pepPosition,
        thirdNameAr,
        gender,
        middleNameAr,
        mobileNumber,
        cityCode,
        customerDocuments,
        mobileNumberVerified,
        thirdName,
        idNumber,
        countryId,
        customerStatus,
        trueBeneficiaryName,
        birthPlace,
        emailAddress,
        nationalityCode,
        localPepFullName,
        isUsPassportHolder,
        motherNameEn,
        relationShipWithTrueBeneficiary,
        familyName,
        relationshipWithPep,
        placeOfWork,
        familyNameAr,
        latinPepFullName,
        profession,
        isMissingDocuments,
        idType,
        address,
        mobileNumber2,
        mobileNumberPrefix,
        isPEP,
        encodedId,
        birthDate,
        firstName,
        emailVerified,
        areaCode,
        isTrueAccountBeneficiary,
        isDeviceRegistered,
        middleName,
        firstNameAr,
        monthlyIncomeUsd,
        residencyType,
        accessToken
      ]);
}

AuthenticatedUserStruct createAuthenticatedUserStruct({
  String? correctionReason,
  String? pepPosition,
  String? thirdNameAr,
  String? gender,
  String? middleNameAr,
  String? mobileNumber,
  String? cityCode,
  String? mobileNumberVerified,
  String? thirdName,
  String? idNumber,
  String? countryId,
  String? customerStatus,
  String? trueBeneficiaryName,
  String? birthPlace,
  String? emailAddress,
  String? nationalityCode,
  String? localPepFullName,
  bool? isUsPassportHolder,
  String? motherNameEn,
  String? relationShipWithTrueBeneficiary,
  String? familyName,
  String? relationshipWithPep,
  String? placeOfWork,
  String? familyNameAr,
  String? latinPepFullName,
  String? profession,
  bool? isMissingDocuments,
  String? idType,
  String? address,
  String? mobileNumber2,
  String? mobileNumberPrefix,
  bool? isPEP,
  String? encodedId,
  String? birthDate,
  String? firstName,
  String? emailVerified,
  String? areaCode,
  bool? isTrueAccountBeneficiary,
  bool? isDeviceRegistered,
  String? middleName,
  String? firstNameAr,
  String? monthlyIncomeUsd,
  String? residencyType,
  String? accessToken,
}) =>
    AuthenticatedUserStruct(
      correctionReason: correctionReason,
      pepPosition: pepPosition,
      thirdNameAr: thirdNameAr,
      gender: gender,
      middleNameAr: middleNameAr,
      mobileNumber: mobileNumber,
      cityCode: cityCode,
      mobileNumberVerified: mobileNumberVerified,
      thirdName: thirdName,
      idNumber: idNumber,
      countryId: countryId,
      customerStatus: customerStatus,
      trueBeneficiaryName: trueBeneficiaryName,
      birthPlace: birthPlace,
      emailAddress: emailAddress,
      nationalityCode: nationalityCode,
      localPepFullName: localPepFullName,
      isUsPassportHolder: isUsPassportHolder,
      motherNameEn: motherNameEn,
      relationShipWithTrueBeneficiary: relationShipWithTrueBeneficiary,
      familyName: familyName,
      relationshipWithPep: relationshipWithPep,
      placeOfWork: placeOfWork,
      familyNameAr: familyNameAr,
      latinPepFullName: latinPepFullName,
      profession: profession,
      isMissingDocuments: isMissingDocuments,
      idType: idType,
      address: address,
      mobileNumber2: mobileNumber2,
      mobileNumberPrefix: mobileNumberPrefix,
      isPEP: isPEP,
      encodedId: encodedId,
      birthDate: birthDate,
      firstName: firstName,
      emailVerified: emailVerified,
      areaCode: areaCode,
      isTrueAccountBeneficiary: isTrueAccountBeneficiary,
      isDeviceRegistered: isDeviceRegistered,
      middleName: middleName,
      firstNameAr: firstNameAr,
      monthlyIncomeUsd: monthlyIncomeUsd,
      residencyType: residencyType,
      accessToken: accessToken,
    );
