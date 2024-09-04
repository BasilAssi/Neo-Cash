// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ResponseModelStruct extends FFFirebaseStruct {
  ResponseModelStruct({
    bool? status,
    String? message,
    String? code,
    String? referenceId,
    String? isDeviceRegistered,
    String? customerStatus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _message = message,
        _code = code,
        _referenceId = referenceId,
        _isDeviceRegistered = isDeviceRegistered,
        _customerStatus = customerStatus,
        super(firestoreUtilData);

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "isDeviceRegistered" field.
  String? _isDeviceRegistered;
  String get isDeviceRegistered => _isDeviceRegistered ?? '';
  set isDeviceRegistered(String? val) => _isDeviceRegistered = val;

  bool hasIsDeviceRegistered() => _isDeviceRegistered != null;

  // "customerStatus" field.
  String? _customerStatus;
  String get customerStatus => _customerStatus ?? '';
  set customerStatus(String? val) => _customerStatus = val;

  bool hasCustomerStatus() => _customerStatus != null;

  static ResponseModelStruct fromMap(Map<String, dynamic> data) =>
      ResponseModelStruct(
        status: data['status'] as bool?,
        message: data['message'] as String?,
        code: data['code'] as String?,
        referenceId: data['referenceId'] as String?,
        isDeviceRegistered: data['isDeviceRegistered'] as String?,
        customerStatus: data['customerStatus'] as String?,
      );

  static ResponseModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
        'code': _code,
        'referenceId': _referenceId,
        'isDeviceRegistered': _isDeviceRegistered,
        'customerStatus': _customerStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'isDeviceRegistered': serializeParam(
          _isDeviceRegistered,
          ParamType.String,
        ),
        'customerStatus': serializeParam(
          _customerStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseModelStruct(
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
        isDeviceRegistered: deserializeParam(
          data['isDeviceRegistered'],
          ParamType.String,
          false,
        ),
        customerStatus: deserializeParam(
          data['customerStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponseModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseModelStruct &&
        status == other.status &&
        message == other.message &&
        code == other.code &&
        referenceId == other.referenceId &&
        isDeviceRegistered == other.isDeviceRegistered &&
        customerStatus == other.customerStatus;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [status, message, code, referenceId, isDeviceRegistered, customerStatus]);
}

ResponseModelStruct createResponseModelStruct({
  bool? status,
  String? message,
  String? code,
  String? referenceId,
  String? isDeviceRegistered,
  String? customerStatus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResponseModelStruct(
      status: status,
      message: message,
      code: code,
      referenceId: referenceId,
      isDeviceRegistered: isDeviceRegistered,
      customerStatus: customerStatus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResponseModelStruct? updateResponseModelStruct(
  ResponseModelStruct? responseModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    responseModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResponseModelStructData(
  Map<String, dynamic> firestoreData,
  ResponseModelStruct? responseModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (responseModel == null) {
    return;
  }
  if (responseModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && responseModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final responseModelData =
      getResponseModelFirestoreData(responseModel, forFieldValue);
  final nestedData =
      responseModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = responseModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResponseModelFirestoreData(
  ResponseModelStruct? responseModel, [
  bool forFieldValue = false,
]) {
  if (responseModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(responseModel.toMap());

  // Add any Firestore field values
  responseModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResponseModelListFirestoreData(
  List<ResponseModelStruct>? responseModels,
) =>
    responseModels
        ?.map((e) => getResponseModelFirestoreData(e, true))
        .toList() ??
    [];
