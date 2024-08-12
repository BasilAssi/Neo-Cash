// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IsRegisteredAPIResponseStruct extends BaseStruct {
  IsRegisteredAPIResponseStruct({
    String? code,
    String? message,
    String? offset,
    String? referenceId,
    bool? status,
    String? totalCount,
    List<IsRegisteredDataStruct>? records,
  })  : _code = code,
        _message = message,
        _offset = offset,
        _referenceId = referenceId,
        _status = status,
        _totalCount = totalCount,
        _records = records;

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

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "totalCount" field.
  String? _totalCount;
  String get totalCount => _totalCount ?? '';
  set totalCount(String? val) => _totalCount = val;

  bool hasTotalCount() => _totalCount != null;

  // "records" field.
  List<IsRegisteredDataStruct>? _records;
  List<IsRegisteredDataStruct> get records => _records ?? const [];
  set records(List<IsRegisteredDataStruct>? val) => _records = val;

  void updateRecords(Function(List<IsRegisteredDataStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  static IsRegisteredAPIResponseStruct fromMap(Map<String, dynamic> data) =>
      IsRegisteredAPIResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
        offset: data['offset'] as String?,
        referenceId: data['referenceId'] as String?,
        status: data['status'] as bool?,
        totalCount: data['totalCount'] as String?,
        records: getStructList(
          data['records'],
          IsRegisteredDataStruct.fromMap,
        ),
      );

  static IsRegisteredAPIResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? IsRegisteredAPIResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
        'offset': _offset,
        'referenceId': _referenceId,
        'status': _status,
        'totalCount': _totalCount,
        'records': _records?.map((e) => e.toMap()).toList(),
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
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'totalCount': serializeParam(
          _totalCount,
          ParamType.String,
        ),
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static IsRegisteredAPIResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IsRegisteredAPIResponseStruct(
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
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        totalCount: deserializeParam(
          data['totalCount'],
          ParamType.String,
          false,
        ),
        records: deserializeStructParam<IsRegisteredDataStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: IsRegisteredDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'IsRegisteredAPIResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IsRegisteredAPIResponseStruct &&
        code == other.code &&
        message == other.message &&
        offset == other.offset &&
        referenceId == other.referenceId &&
        status == other.status &&
        totalCount == other.totalCount &&
        listEquality.equals(records, other.records);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([code, message, offset, referenceId, status, totalCount, records]);
}

IsRegisteredAPIResponseStruct createIsRegisteredAPIResponseStruct({
  String? code,
  String? message,
  String? offset,
  String? referenceId,
  bool? status,
  String? totalCount,
}) =>
    IsRegisteredAPIResponseStruct(
      code: code,
      message: message,
      offset: offset,
      referenceId: referenceId,
      status: status,
      totalCount: totalCount,
    );
