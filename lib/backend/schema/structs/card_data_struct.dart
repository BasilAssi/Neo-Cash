// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardDataStruct extends BaseStruct {
  CardDataStruct({
    String? cardNumber,
    String? expiryDate,
    String? status,
    String? nameOnCard,
    String? type,
    String? cardCvc,
    String? firstName,
    String? middleName,
    String? lastName,
    String? cardToken,
    String? imagePath,
    String? voucherValue,
    String? programCode,
    String? localProgramName,
    String? latinProgramName,
    String? accountNumber,
    bool? isReloadable,
    String? isDueRenewalFees,
    String? renewalDueDate,
    bool? isPhysical,
  })  : _cardNumber = cardNumber,
        _expiryDate = expiryDate,
        _status = status,
        _nameOnCard = nameOnCard,
        _type = type,
        _cardCvc = cardCvc,
        _firstName = firstName,
        _middleName = middleName,
        _lastName = lastName,
        _cardToken = cardToken,
        _imagePath = imagePath,
        _voucherValue = voucherValue,
        _programCode = programCode,
        _localProgramName = localProgramName,
        _latinProgramName = latinProgramName,
        _accountNumber = accountNumber,
        _isReloadable = isReloadable,
        _isDueRenewalFees = isDueRenewalFees,
        _renewalDueDate = renewalDueDate,
        _isPhysical = isPhysical;

  // "cardNumber" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  set cardNumber(String? val) => _cardNumber = val;

  bool hasCardNumber() => _cardNumber != null;

  // "expiryDate" field.
  String? _expiryDate;
  String get expiryDate => _expiryDate ?? '';
  set expiryDate(String? val) => _expiryDate = val;

  bool hasExpiryDate() => _expiryDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "nameOnCard" field.
  String? _nameOnCard;
  String get nameOnCard => _nameOnCard ?? '';
  set nameOnCard(String? val) => _nameOnCard = val;

  bool hasNameOnCard() => _nameOnCard != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "cardCvc" field.
  String? _cardCvc;
  String get cardCvc => _cardCvc ?? '';
  set cardCvc(String? val) => _cardCvc = val;

  bool hasCardCvc() => _cardCvc != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "middleName" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;

  bool hasMiddleName() => _middleName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "cardToken" field.
  String? _cardToken;
  String get cardToken => _cardToken ?? '';
  set cardToken(String? val) => _cardToken = val;

  bool hasCardToken() => _cardToken != null;

  // "imagePath" field.
  String? _imagePath;
  String get imagePath => _imagePath ?? '';
  set imagePath(String? val) => _imagePath = val;

  bool hasImagePath() => _imagePath != null;

  // "voucherValue" field.
  String? _voucherValue;
  String get voucherValue => _voucherValue ?? '';
  set voucherValue(String? val) => _voucherValue = val;

  bool hasVoucherValue() => _voucherValue != null;

  // "programCode" field.
  String? _programCode;
  String get programCode => _programCode ?? '';
  set programCode(String? val) => _programCode = val;

  bool hasProgramCode() => _programCode != null;

  // "localProgramName" field.
  String? _localProgramName;
  String get localProgramName => _localProgramName ?? '';
  set localProgramName(String? val) => _localProgramName = val;

  bool hasLocalProgramName() => _localProgramName != null;

  // "latinProgramName" field.
  String? _latinProgramName;
  String get latinProgramName => _latinProgramName ?? '';
  set latinProgramName(String? val) => _latinProgramName = val;

  bool hasLatinProgramName() => _latinProgramName != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "isReloadable" field.
  bool? _isReloadable;
  bool get isReloadable => _isReloadable ?? false;
  set isReloadable(bool? val) => _isReloadable = val;

  bool hasIsReloadable() => _isReloadable != null;

  // "isDueRenewalFees" field.
  String? _isDueRenewalFees;
  String get isDueRenewalFees => _isDueRenewalFees ?? '';
  set isDueRenewalFees(String? val) => _isDueRenewalFees = val;

  bool hasIsDueRenewalFees() => _isDueRenewalFees != null;

  // "renewalDueDate" field.
  String? _renewalDueDate;
  String get renewalDueDate => _renewalDueDate ?? '';
  set renewalDueDate(String? val) => _renewalDueDate = val;

  bool hasRenewalDueDate() => _renewalDueDate != null;

  // "isPhysical" field.
  bool? _isPhysical;
  bool get isPhysical => _isPhysical ?? false;
  set isPhysical(bool? val) => _isPhysical = val;

  bool hasIsPhysical() => _isPhysical != null;

  static CardDataStruct fromMap(Map<String, dynamic> data) => CardDataStruct(
        cardNumber: data['cardNumber'] as String?,
        expiryDate: data['expiryDate'] as String?,
        status: data['status'] as String?,
        nameOnCard: data['nameOnCard'] as String?,
        type: data['type'] as String?,
        cardCvc: data['cardCvc'] as String?,
        firstName: data['firstName'] as String?,
        middleName: data['middleName'] as String?,
        lastName: data['lastName'] as String?,
        cardToken: data['cardToken'] as String?,
        imagePath: data['imagePath'] as String?,
        voucherValue: data['voucherValue'] as String?,
        programCode: data['programCode'] as String?,
        localProgramName: data['localProgramName'] as String?,
        latinProgramName: data['latinProgramName'] as String?,
        accountNumber: data['accountNumber'] as String?,
        isReloadable: data['isReloadable'] as bool?,
        isDueRenewalFees: data['isDueRenewalFees'] as String?,
        renewalDueDate: data['renewalDueDate'] as String?,
        isPhysical: data['isPhysical'] as bool?,
      );

  static CardDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cardNumber': _cardNumber,
        'expiryDate': _expiryDate,
        'status': _status,
        'nameOnCard': _nameOnCard,
        'type': _type,
        'cardCvc': _cardCvc,
        'firstName': _firstName,
        'middleName': _middleName,
        'lastName': _lastName,
        'cardToken': _cardToken,
        'imagePath': _imagePath,
        'voucherValue': _voucherValue,
        'programCode': _programCode,
        'localProgramName': _localProgramName,
        'latinProgramName': _latinProgramName,
        'accountNumber': _accountNumber,
        'isReloadable': _isReloadable,
        'isDueRenewalFees': _isDueRenewalFees,
        'renewalDueDate': _renewalDueDate,
        'isPhysical': _isPhysical,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cardNumber': serializeParam(
          _cardNumber,
          ParamType.String,
        ),
        'expiryDate': serializeParam(
          _expiryDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'nameOnCard': serializeParam(
          _nameOnCard,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'cardCvc': serializeParam(
          _cardCvc,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'middleName': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'cardToken': serializeParam(
          _cardToken,
          ParamType.String,
        ),
        'imagePath': serializeParam(
          _imagePath,
          ParamType.String,
        ),
        'voucherValue': serializeParam(
          _voucherValue,
          ParamType.String,
        ),
        'programCode': serializeParam(
          _programCode,
          ParamType.String,
        ),
        'localProgramName': serializeParam(
          _localProgramName,
          ParamType.String,
        ),
        'latinProgramName': serializeParam(
          _latinProgramName,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'isReloadable': serializeParam(
          _isReloadable,
          ParamType.bool,
        ),
        'isDueRenewalFees': serializeParam(
          _isDueRenewalFees,
          ParamType.String,
        ),
        'renewalDueDate': serializeParam(
          _renewalDueDate,
          ParamType.String,
        ),
        'isPhysical': serializeParam(
          _isPhysical,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CardDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardDataStruct(
        cardNumber: deserializeParam(
          data['cardNumber'],
          ParamType.String,
          false,
        ),
        expiryDate: deserializeParam(
          data['expiryDate'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        nameOnCard: deserializeParam(
          data['nameOnCard'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        cardCvc: deserializeParam(
          data['cardCvc'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        middleName: deserializeParam(
          data['middleName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        cardToken: deserializeParam(
          data['cardToken'],
          ParamType.String,
          false,
        ),
        imagePath: deserializeParam(
          data['imagePath'],
          ParamType.String,
          false,
        ),
        voucherValue: deserializeParam(
          data['voucherValue'],
          ParamType.String,
          false,
        ),
        programCode: deserializeParam(
          data['programCode'],
          ParamType.String,
          false,
        ),
        localProgramName: deserializeParam(
          data['localProgramName'],
          ParamType.String,
          false,
        ),
        latinProgramName: deserializeParam(
          data['latinProgramName'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        isReloadable: deserializeParam(
          data['isReloadable'],
          ParamType.bool,
          false,
        ),
        isDueRenewalFees: deserializeParam(
          data['isDueRenewalFees'],
          ParamType.String,
          false,
        ),
        renewalDueDate: deserializeParam(
          data['renewalDueDate'],
          ParamType.String,
          false,
        ),
        isPhysical: deserializeParam(
          data['isPhysical'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CardDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardDataStruct &&
        cardNumber == other.cardNumber &&
        expiryDate == other.expiryDate &&
        status == other.status &&
        nameOnCard == other.nameOnCard &&
        type == other.type &&
        cardCvc == other.cardCvc &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        cardToken == other.cardToken &&
        imagePath == other.imagePath &&
        voucherValue == other.voucherValue &&
        programCode == other.programCode &&
        localProgramName == other.localProgramName &&
        latinProgramName == other.latinProgramName &&
        accountNumber == other.accountNumber &&
        isReloadable == other.isReloadable &&
        isDueRenewalFees == other.isDueRenewalFees &&
        renewalDueDate == other.renewalDueDate &&
        isPhysical == other.isPhysical;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cardNumber,
        expiryDate,
        status,
        nameOnCard,
        type,
        cardCvc,
        firstName,
        middleName,
        lastName,
        cardToken,
        imagePath,
        voucherValue,
        programCode,
        localProgramName,
        latinProgramName,
        accountNumber,
        isReloadable,
        isDueRenewalFees,
        renewalDueDate,
        isPhysical
      ]);
}

CardDataStruct createCardDataStruct({
  String? cardNumber,
  String? expiryDate,
  String? status,
  String? nameOnCard,
  String? type,
  String? cardCvc,
  String? firstName,
  String? middleName,
  String? lastName,
  String? cardToken,
  String? imagePath,
  String? voucherValue,
  String? programCode,
  String? localProgramName,
  String? latinProgramName,
  String? accountNumber,
  bool? isReloadable,
  String? isDueRenewalFees,
  String? renewalDueDate,
  bool? isPhysical,
}) =>
    CardDataStruct(
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      status: status,
      nameOnCard: nameOnCard,
      type: type,
      cardCvc: cardCvc,
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      cardToken: cardToken,
      imagePath: imagePath,
      voucherValue: voucherValue,
      programCode: programCode,
      localProgramName: localProgramName,
      latinProgramName: latinProgramName,
      accountNumber: accountNumber,
      isReloadable: isReloadable,
      isDueRenewalFees: isDueRenewalFees,
      renewalDueDate: renewalDueDate,
      isPhysical: isPhysical,
    );
