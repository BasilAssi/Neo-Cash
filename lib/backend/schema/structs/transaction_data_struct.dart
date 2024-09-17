// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionDataStruct extends FFFirebaseStruct {
  TransactionDataStruct({
    int? id,
    String? transactionType,
    String? transactionDate,
    String? merchantName,
    String? transactionPostDate,
    String? transactionStatus,
    String? merchantCode,
    String? transactionReference,
    String? transactionAmount,
    String? creditDebit,
    String? transactionCurrencyCode,
    String? billingAmount,
    String? billingCurrencyCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _transactionType = transactionType,
        _transactionDate = transactionDate,
        _merchantName = merchantName,
        _transactionPostDate = transactionPostDate,
        _transactionStatus = transactionStatus,
        _merchantCode = merchantCode,
        _transactionReference = transactionReference,
        _transactionAmount = transactionAmount,
        _creditDebit = creditDebit,
        _transactionCurrencyCode = transactionCurrencyCode,
        _billingAmount = billingAmount,
        _billingCurrencyCode = billingCurrencyCode,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "transactionDate" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "merchantName" field.
  String? _merchantName;
  String get merchantName => _merchantName ?? '';
  set merchantName(String? val) => _merchantName = val;

  bool hasMerchantName() => _merchantName != null;

  // "transactionPostDate" field.
  String? _transactionPostDate;
  String get transactionPostDate => _transactionPostDate ?? '';
  set transactionPostDate(String? val) => _transactionPostDate = val;

  bool hasTransactionPostDate() => _transactionPostDate != null;

  // "transactionStatus" field.
  String? _transactionStatus;
  String get transactionStatus => _transactionStatus ?? '';
  set transactionStatus(String? val) => _transactionStatus = val;

  bool hasTransactionStatus() => _transactionStatus != null;

  // "merchantCode" field.
  String? _merchantCode;
  String get merchantCode => _merchantCode ?? '';
  set merchantCode(String? val) => _merchantCode = val;

  bool hasMerchantCode() => _merchantCode != null;

  // "transactionReference" field.
  String? _transactionReference;
  String get transactionReference => _transactionReference ?? '';
  set transactionReference(String? val) => _transactionReference = val;

  bool hasTransactionReference() => _transactionReference != null;

  // "transactionAmount" field.
  String? _transactionAmount;
  String get transactionAmount => _transactionAmount ?? '';
  set transactionAmount(String? val) => _transactionAmount = val;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "creditDebit" field.
  String? _creditDebit;
  String get creditDebit => _creditDebit ?? '';
  set creditDebit(String? val) => _creditDebit = val;

  bool hasCreditDebit() => _creditDebit != null;

  // "transactionCurrencyCode" field.
  String? _transactionCurrencyCode;
  String get transactionCurrencyCode => _transactionCurrencyCode ?? '';
  set transactionCurrencyCode(String? val) => _transactionCurrencyCode = val;

  bool hasTransactionCurrencyCode() => _transactionCurrencyCode != null;

  // "billingAmount" field.
  String? _billingAmount;
  String get billingAmount => _billingAmount ?? '';
  set billingAmount(String? val) => _billingAmount = val;

  bool hasBillingAmount() => _billingAmount != null;

  // "billingCurrencyCode" field.
  String? _billingCurrencyCode;
  String get billingCurrencyCode => _billingCurrencyCode ?? '';
  set billingCurrencyCode(String? val) => _billingCurrencyCode = val;

  bool hasBillingCurrencyCode() => _billingCurrencyCode != null;

  static TransactionDataStruct fromMap(Map<String, dynamic> data) =>
      TransactionDataStruct(
        id: castToType<int>(data['id']),
        transactionType: data['transactionType'] as String?,
        transactionDate: data['transactionDate'] as String?,
        merchantName: data['merchantName'] as String?,
        transactionPostDate: data['transactionPostDate'] as String?,
        transactionStatus: data['transactionStatus'] as String?,
        merchantCode: data['merchantCode'] as String?,
        transactionReference: data['transactionReference'] as String?,
        transactionAmount: data['transactionAmount'] as String?,
        creditDebit: data['creditDebit'] as String?,
        transactionCurrencyCode: data['transactionCurrencyCode'] as String?,
        billingAmount: data['billingAmount'] as String?,
        billingCurrencyCode: data['billingCurrencyCode'] as String?,
      );

  static TransactionDataStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'transactionType': _transactionType,
        'transactionDate': _transactionDate,
        'merchantName': _merchantName,
        'transactionPostDate': _transactionPostDate,
        'transactionStatus': _transactionStatus,
        'merchantCode': _merchantCode,
        'transactionReference': _transactionReference,
        'transactionAmount': _transactionAmount,
        'creditDebit': _creditDebit,
        'transactionCurrencyCode': _transactionCurrencyCode,
        'billingAmount': _billingAmount,
        'billingCurrencyCode': _billingCurrencyCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'transactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'transactionDate': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'merchantName': serializeParam(
          _merchantName,
          ParamType.String,
        ),
        'transactionPostDate': serializeParam(
          _transactionPostDate,
          ParamType.String,
        ),
        'transactionStatus': serializeParam(
          _transactionStatus,
          ParamType.String,
        ),
        'merchantCode': serializeParam(
          _merchantCode,
          ParamType.String,
        ),
        'transactionReference': serializeParam(
          _transactionReference,
          ParamType.String,
        ),
        'transactionAmount': serializeParam(
          _transactionAmount,
          ParamType.String,
        ),
        'creditDebit': serializeParam(
          _creditDebit,
          ParamType.String,
        ),
        'transactionCurrencyCode': serializeParam(
          _transactionCurrencyCode,
          ParamType.String,
        ),
        'billingAmount': serializeParam(
          _billingAmount,
          ParamType.String,
        ),
        'billingCurrencyCode': serializeParam(
          _billingCurrencyCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        transactionType: deserializeParam(
          data['transactionType'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transactionDate'],
          ParamType.String,
          false,
        ),
        merchantName: deserializeParam(
          data['merchantName'],
          ParamType.String,
          false,
        ),
        transactionPostDate: deserializeParam(
          data['transactionPostDate'],
          ParamType.String,
          false,
        ),
        transactionStatus: deserializeParam(
          data['transactionStatus'],
          ParamType.String,
          false,
        ),
        merchantCode: deserializeParam(
          data['merchantCode'],
          ParamType.String,
          false,
        ),
        transactionReference: deserializeParam(
          data['transactionReference'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transactionAmount'],
          ParamType.String,
          false,
        ),
        creditDebit: deserializeParam(
          data['creditDebit'],
          ParamType.String,
          false,
        ),
        transactionCurrencyCode: deserializeParam(
          data['transactionCurrencyCode'],
          ParamType.String,
          false,
        ),
        billingAmount: deserializeParam(
          data['billingAmount'],
          ParamType.String,
          false,
        ),
        billingCurrencyCode: deserializeParam(
          data['billingCurrencyCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionDataStruct &&
        id == other.id &&
        transactionType == other.transactionType &&
        transactionDate == other.transactionDate &&
        merchantName == other.merchantName &&
        transactionPostDate == other.transactionPostDate &&
        transactionStatus == other.transactionStatus &&
        merchantCode == other.merchantCode &&
        transactionReference == other.transactionReference &&
        transactionAmount == other.transactionAmount &&
        creditDebit == other.creditDebit &&
        transactionCurrencyCode == other.transactionCurrencyCode &&
        billingAmount == other.billingAmount &&
        billingCurrencyCode == other.billingCurrencyCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        transactionType,
        transactionDate,
        merchantName,
        transactionPostDate,
        transactionStatus,
        merchantCode,
        transactionReference,
        transactionAmount,
        creditDebit,
        transactionCurrencyCode,
        billingAmount,
        billingCurrencyCode
      ]);
}

TransactionDataStruct createTransactionDataStruct({
  int? id,
  String? transactionType,
  String? transactionDate,
  String? merchantName,
  String? transactionPostDate,
  String? transactionStatus,
  String? merchantCode,
  String? transactionReference,
  String? transactionAmount,
  String? creditDebit,
  String? transactionCurrencyCode,
  String? billingAmount,
  String? billingCurrencyCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionDataStruct(
      id: id,
      transactionType: transactionType,
      transactionDate: transactionDate,
      merchantName: merchantName,
      transactionPostDate: transactionPostDate,
      transactionStatus: transactionStatus,
      merchantCode: merchantCode,
      transactionReference: transactionReference,
      transactionAmount: transactionAmount,
      creditDebit: creditDebit,
      transactionCurrencyCode: transactionCurrencyCode,
      billingAmount: billingAmount,
      billingCurrencyCode: billingCurrencyCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransactionDataStruct? updateTransactionDataStruct(
  TransactionDataStruct? transactionData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transactionData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransactionDataStructData(
  Map<String, dynamic> firestoreData,
  TransactionDataStruct? transactionData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transactionData == null) {
    return;
  }
  if (transactionData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transactionData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionDataData =
      getTransactionDataFirestoreData(transactionData, forFieldValue);
  final nestedData =
      transactionDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transactionData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransactionDataFirestoreData(
  TransactionDataStruct? transactionData, [
  bool forFieldValue = false,
]) {
  if (transactionData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transactionData.toMap());

  // Add any Firestore field values
  transactionData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionDataListFirestoreData(
  List<TransactionDataStruct>? transactionDatas,
) =>
    transactionDatas
        ?.map((e) => getTransactionDataFirestoreData(e, true))
        .toList() ??
    [];
