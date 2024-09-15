// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ExchangeRateDataStruct extends FFFirebaseStruct {
  ExchangeRateDataStruct({
    String? encodedId,
    String? fromCurrencyCode,
    String? toCurrencyCode,
    double? value,
    String? exchangeRateDate,
    double? bid,
    double? ask,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _encodedId = encodedId,
        _fromCurrencyCode = fromCurrencyCode,
        _toCurrencyCode = toCurrencyCode,
        _value = value,
        _exchangeRateDate = exchangeRateDate,
        _bid = bid,
        _ask = ask,
        super(firestoreUtilData);

  // "encodedId" field.
  String? _encodedId;
  String get encodedId => _encodedId ?? '';
  set encodedId(String? val) => _encodedId = val;

  bool hasEncodedId() => _encodedId != null;

  // "fromCurrencyCode" field.
  String? _fromCurrencyCode;
  String get fromCurrencyCode => _fromCurrencyCode ?? '';
  set fromCurrencyCode(String? val) => _fromCurrencyCode = val;

  bool hasFromCurrencyCode() => _fromCurrencyCode != null;

  // "toCurrencyCode" field.
  String? _toCurrencyCode;
  String get toCurrencyCode => _toCurrencyCode ?? '';
  set toCurrencyCode(String? val) => _toCurrencyCode = val;

  bool hasToCurrencyCode() => _toCurrencyCode != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "exchangeRateDate" field.
  String? _exchangeRateDate;
  String get exchangeRateDate => _exchangeRateDate ?? '';
  set exchangeRateDate(String? val) => _exchangeRateDate = val;

  bool hasExchangeRateDate() => _exchangeRateDate != null;

  // "bid" field.
  double? _bid;
  double get bid => _bid ?? 0.0;
  set bid(double? val) => _bid = val;

  void incrementBid(double amount) => bid = bid + amount;

  bool hasBid() => _bid != null;

  // "ask" field.
  double? _ask;
  double get ask => _ask ?? 0.0;
  set ask(double? val) => _ask = val;

  void incrementAsk(double amount) => ask = ask + amount;

  bool hasAsk() => _ask != null;

  static ExchangeRateDataStruct fromMap(Map<String, dynamic> data) =>
      ExchangeRateDataStruct(
        encodedId: data['encodedId'] as String?,
        fromCurrencyCode: data['fromCurrencyCode'] as String?,
        toCurrencyCode: data['toCurrencyCode'] as String?,
        value: castToType<double>(data['value']),
        exchangeRateDate: data['exchangeRateDate'] as String?,
        bid: castToType<double>(data['bid']),
        ask: castToType<double>(data['ask']),
      );

  static ExchangeRateDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ExchangeRateDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'encodedId': _encodedId,
        'fromCurrencyCode': _fromCurrencyCode,
        'toCurrencyCode': _toCurrencyCode,
        'value': _value,
        'exchangeRateDate': _exchangeRateDate,
        'bid': _bid,
        'ask': _ask,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'encodedId': serializeParam(
          _encodedId,
          ParamType.String,
        ),
        'fromCurrencyCode': serializeParam(
          _fromCurrencyCode,
          ParamType.String,
        ),
        'toCurrencyCode': serializeParam(
          _toCurrencyCode,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
        'exchangeRateDate': serializeParam(
          _exchangeRateDate,
          ParamType.String,
        ),
        'bid': serializeParam(
          _bid,
          ParamType.double,
        ),
        'ask': serializeParam(
          _ask,
          ParamType.double,
        ),
      }.withoutNulls;

  static ExchangeRateDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExchangeRateDataStruct(
        encodedId: deserializeParam(
          data['encodedId'],
          ParamType.String,
          false,
        ),
        fromCurrencyCode: deserializeParam(
          data['fromCurrencyCode'],
          ParamType.String,
          false,
        ),
        toCurrencyCode: deserializeParam(
          data['toCurrencyCode'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
        exchangeRateDate: deserializeParam(
          data['exchangeRateDate'],
          ParamType.String,
          false,
        ),
        bid: deserializeParam(
          data['bid'],
          ParamType.double,
          false,
        ),
        ask: deserializeParam(
          data['ask'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ExchangeRateDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExchangeRateDataStruct &&
        encodedId == other.encodedId &&
        fromCurrencyCode == other.fromCurrencyCode &&
        toCurrencyCode == other.toCurrencyCode &&
        value == other.value &&
        exchangeRateDate == other.exchangeRateDate &&
        bid == other.bid &&
        ask == other.ask;
  }

  @override
  int get hashCode => const ListEquality().hash([
        encodedId,
        fromCurrencyCode,
        toCurrencyCode,
        value,
        exchangeRateDate,
        bid,
        ask
      ]);
}

ExchangeRateDataStruct createExchangeRateDataStruct({
  String? encodedId,
  String? fromCurrencyCode,
  String? toCurrencyCode,
  double? value,
  String? exchangeRateDate,
  double? bid,
  double? ask,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExchangeRateDataStruct(
      encodedId: encodedId,
      fromCurrencyCode: fromCurrencyCode,
      toCurrencyCode: toCurrencyCode,
      value: value,
      exchangeRateDate: exchangeRateDate,
      bid: bid,
      ask: ask,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExchangeRateDataStruct? updateExchangeRateDataStruct(
  ExchangeRateDataStruct? exchangeRateData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    exchangeRateData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExchangeRateDataStructData(
  Map<String, dynamic> firestoreData,
  ExchangeRateDataStruct? exchangeRateData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exchangeRateData == null) {
    return;
  }
  if (exchangeRateData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && exchangeRateData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exchangeRateDataData =
      getExchangeRateDataFirestoreData(exchangeRateData, forFieldValue);
  final nestedData =
      exchangeRateDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = exchangeRateData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExchangeRateDataFirestoreData(
  ExchangeRateDataStruct? exchangeRateData, [
  bool forFieldValue = false,
]) {
  if (exchangeRateData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(exchangeRateData.toMap());

  // Add any Firestore field values
  exchangeRateData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExchangeRateDataListFirestoreData(
  List<ExchangeRateDataStruct>? exchangeRateDatas,
) =>
    exchangeRateDatas
        ?.map((e) => getExchangeRateDataFirestoreData(e, true))
        .toList() ??
    [];
