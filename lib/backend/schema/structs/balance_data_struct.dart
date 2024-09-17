// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BalanceDataStruct extends FFFirebaseStruct {
  BalanceDataStruct({
    String? currencyCode,
    double? availableBalance,
    double? authorizedAccumAmount,
    double? usedAccumAmount,
    double? dueAmount,
    String? customerId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _currencyCode = currencyCode,
        _availableBalance = availableBalance,
        _authorizedAccumAmount = authorizedAccumAmount,
        _usedAccumAmount = usedAccumAmount,
        _dueAmount = dueAmount,
        _customerId = customerId,
        super(firestoreUtilData);

  // "currencyCode" field.
  String? _currencyCode;
  String get currencyCode => _currencyCode ?? '';
  set currencyCode(String? val) => _currencyCode = val;

  bool hasCurrencyCode() => _currencyCode != null;

  // "availableBalance" field.
  double? _availableBalance;
  double get availableBalance => _availableBalance ?? 0.0;
  set availableBalance(double? val) => _availableBalance = val;

  void incrementAvailableBalance(double amount) =>
      availableBalance = availableBalance + amount;

  bool hasAvailableBalance() => _availableBalance != null;

  // "authorizedAccumAmount" field.
  double? _authorizedAccumAmount;
  double get authorizedAccumAmount => _authorizedAccumAmount ?? 0.0;
  set authorizedAccumAmount(double? val) => _authorizedAccumAmount = val;

  void incrementAuthorizedAccumAmount(double amount) =>
      authorizedAccumAmount = authorizedAccumAmount + amount;

  bool hasAuthorizedAccumAmount() => _authorizedAccumAmount != null;

  // "usedAccumAmount" field.
  double? _usedAccumAmount;
  double get usedAccumAmount => _usedAccumAmount ?? 0.0;
  set usedAccumAmount(double? val) => _usedAccumAmount = val;

  void incrementUsedAccumAmount(double amount) =>
      usedAccumAmount = usedAccumAmount + amount;

  bool hasUsedAccumAmount() => _usedAccumAmount != null;

  // "dueAmount" field.
  double? _dueAmount;
  double get dueAmount => _dueAmount ?? 0.0;
  set dueAmount(double? val) => _dueAmount = val;

  void incrementDueAmount(double amount) => dueAmount = dueAmount + amount;

  bool hasDueAmount() => _dueAmount != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  static BalanceDataStruct fromMap(Map<String, dynamic> data) =>
      BalanceDataStruct(
        currencyCode: data['currencyCode'] as String?,
        availableBalance: castToType<double>(data['availableBalance']),
        authorizedAccumAmount:
            castToType<double>(data['authorizedAccumAmount']),
        usedAccumAmount: castToType<double>(data['usedAccumAmount']),
        dueAmount: castToType<double>(data['dueAmount']),
        customerId: data['customerId'] as String?,
      );

  static BalanceDataStruct? maybeFromMap(dynamic data) => data is Map
      ? BalanceDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'currencyCode': _currencyCode,
        'availableBalance': _availableBalance,
        'authorizedAccumAmount': _authorizedAccumAmount,
        'usedAccumAmount': _usedAccumAmount,
        'dueAmount': _dueAmount,
        'customerId': _customerId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currencyCode': serializeParam(
          _currencyCode,
          ParamType.String,
        ),
        'availableBalance': serializeParam(
          _availableBalance,
          ParamType.double,
        ),
        'authorizedAccumAmount': serializeParam(
          _authorizedAccumAmount,
          ParamType.double,
        ),
        'usedAccumAmount': serializeParam(
          _usedAccumAmount,
          ParamType.double,
        ),
        'dueAmount': serializeParam(
          _dueAmount,
          ParamType.double,
        ),
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
      }.withoutNulls;

  static BalanceDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      BalanceDataStruct(
        currencyCode: deserializeParam(
          data['currencyCode'],
          ParamType.String,
          false,
        ),
        availableBalance: deserializeParam(
          data['availableBalance'],
          ParamType.double,
          false,
        ),
        authorizedAccumAmount: deserializeParam(
          data['authorizedAccumAmount'],
          ParamType.double,
          false,
        ),
        usedAccumAmount: deserializeParam(
          data['usedAccumAmount'],
          ParamType.double,
          false,
        ),
        dueAmount: deserializeParam(
          data['dueAmount'],
          ParamType.double,
          false,
        ),
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BalanceDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BalanceDataStruct &&
        currencyCode == other.currencyCode &&
        availableBalance == other.availableBalance &&
        authorizedAccumAmount == other.authorizedAccumAmount &&
        usedAccumAmount == other.usedAccumAmount &&
        dueAmount == other.dueAmount &&
        customerId == other.customerId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        currencyCode,
        availableBalance,
        authorizedAccumAmount,
        usedAccumAmount,
        dueAmount,
        customerId
      ]);
}

BalanceDataStruct createBalanceDataStruct({
  String? currencyCode,
  double? availableBalance,
  double? authorizedAccumAmount,
  double? usedAccumAmount,
  double? dueAmount,
  String? customerId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BalanceDataStruct(
      currencyCode: currencyCode,
      availableBalance: availableBalance,
      authorizedAccumAmount: authorizedAccumAmount,
      usedAccumAmount: usedAccumAmount,
      dueAmount: dueAmount,
      customerId: customerId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BalanceDataStruct? updateBalanceDataStruct(
  BalanceDataStruct? balanceData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    balanceData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBalanceDataStructData(
  Map<String, dynamic> firestoreData,
  BalanceDataStruct? balanceData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (balanceData == null) {
    return;
  }
  if (balanceData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && balanceData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final balanceDataData =
      getBalanceDataFirestoreData(balanceData, forFieldValue);
  final nestedData =
      balanceDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = balanceData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBalanceDataFirestoreData(
  BalanceDataStruct? balanceData, [
  bool forFieldValue = false,
]) {
  if (balanceData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(balanceData.toMap());

  // Add any Firestore field values
  balanceData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBalanceDataListFirestoreData(
  List<BalanceDataStruct>? balanceDatas,
) =>
    balanceDatas?.map((e) => getBalanceDataFirestoreData(e, true)).toList() ??
    [];
