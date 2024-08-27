// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListCustomerCardsStruct extends BaseStruct {
  ListCustomerCardsStruct({
    String? code,
    String? message,
    String? offset,
    List<CardDataStruct>? records,
    String? referenceId,
    String? status,
    String? totalCount,
  })  : _code = code,
        _message = message,
        _offset = offset,
        _records = records,
        _referenceId = referenceId,
        _status = status,
        _totalCount = totalCount;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "offset" field.
  String? _offset;
  String get offset => _offset ?? '';
  set offset(String? val) => _offset = val;

  bool hasOffset() => _offset != null;

  // "records" field.
  List<CardDataStruct>? _records;
  List<CardDataStruct> get records => _records ?? const [];
  set records(List<CardDataStruct>? val) => _records = val;

  void updateRecords(Function(List<CardDataStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "totalCount" field.
  String? _totalCount;
  String get totalCount => _totalCount ?? '';
  set totalCount(String? val) => _totalCount = val;

  bool hasTotalCount() => _totalCount != null;

  static ListCustomerCardsStruct fromMap(Map<String, dynamic> data) =>
      ListCustomerCardsStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        offset: data['offset'] as String?,
        records: getStructList(
          data['records'],
          CardDataStruct.fromMap,
        ),
        referenceId: data['referenceId'] as String?,
        status: data['status'] as String?,
        totalCount: data['totalCount'] as String?,
      );

  static ListCustomerCardsStruct? maybeFromMap(dynamic data) => data is Map
      ? ListCustomerCardsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
        'offset': _offset,
        'records': _records?.map((e) => e.toMap()).toList(),
        'referenceId': _referenceId,
        'status': _status,
        'totalCount': _totalCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.String,
        ),
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'totalCount': serializeParam(
          _totalCount,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListCustomerCardsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListCustomerCardsStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.String,
          false,
        ),
        records: deserializeStructParam<CardDataStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: CardDataStruct.fromSerializableMap,
        ),
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        totalCount: deserializeParam(
          data['totalCount'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListCustomerCardsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListCustomerCardsStruct &&
        code == other.code &&
        message == other.message &&
        offset == other.offset &&
        listEquality.equals(records, other.records) &&
        referenceId == other.referenceId &&
        status == other.status &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([code, message, offset, records, referenceId, status, totalCount]);
}

ListCustomerCardsStruct createListCustomerCardsStruct({
  String? code,
  String? message,
  String? offset,
  String? referenceId,
  String? status,
  String? totalCount,
}) =>
    ListCustomerCardsStruct(
      code: code,
      message: message,
      offset: offset,
      referenceId: referenceId,
      status: status,
      totalCount: totalCount,
    );
