// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationDataStruct extends FFFirebaseStruct {
  NotificationDataStruct({
    String? encodedId,
    String? title,
    String? body,
    String? destination,
    String? recordStatus,
    String? language,
    String? submissionDate,
    String? submitted,
    String? notificationChannel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _encodedId = encodedId,
        _title = title,
        _body = body,
        _destination = destination,
        _recordStatus = recordStatus,
        _language = language,
        _submissionDate = submissionDate,
        _submitted = submitted,
        _notificationChannel = notificationChannel,
        super(firestoreUtilData);

  // "encodedId" field.
  String? _encodedId;
  String get encodedId => _encodedId ?? '';
  set encodedId(String? val) => _encodedId = val;

  bool hasEncodedId() => _encodedId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  set destination(String? val) => _destination = val;

  bool hasDestination() => _destination != null;

  // "recordStatus" field.
  String? _recordStatus;
  String get recordStatus => _recordStatus ?? '';
  set recordStatus(String? val) => _recordStatus = val;

  bool hasRecordStatus() => _recordStatus != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;

  bool hasLanguage() => _language != null;

  // "submissionDate" field.
  String? _submissionDate;
  String get submissionDate => _submissionDate ?? '';
  set submissionDate(String? val) => _submissionDate = val;

  bool hasSubmissionDate() => _submissionDate != null;

  // "submitted" field.
  String? _submitted;
  String get submitted => _submitted ?? '';
  set submitted(String? val) => _submitted = val;

  bool hasSubmitted() => _submitted != null;

  // "notificationChannel" field.
  String? _notificationChannel;
  String get notificationChannel => _notificationChannel ?? '';
  set notificationChannel(String? val) => _notificationChannel = val;

  bool hasNotificationChannel() => _notificationChannel != null;

  static NotificationDataStruct fromMap(Map<String, dynamic> data) =>
      NotificationDataStruct(
        encodedId: data['encodedId'] as String?,
        title: data['title'] as String?,
        body: data['body'] as String?,
        destination: data['destination'] as String?,
        recordStatus: data['recordStatus'] as String?,
        language: data['language'] as String?,
        submissionDate: data['submissionDate'] as String?,
        submitted: data['submitted'] as String?,
        notificationChannel: data['notificationChannel'] as String?,
      );

  static NotificationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'encodedId': _encodedId,
        'title': _title,
        'body': _body,
        'destination': _destination,
        'recordStatus': _recordStatus,
        'language': _language,
        'submissionDate': _submissionDate,
        'submitted': _submitted,
        'notificationChannel': _notificationChannel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'encodedId': serializeParam(
          _encodedId,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'body': serializeParam(
          _body,
          ParamType.String,
        ),
        'destination': serializeParam(
          _destination,
          ParamType.String,
        ),
        'recordStatus': serializeParam(
          _recordStatus,
          ParamType.String,
        ),
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'submissionDate': serializeParam(
          _submissionDate,
          ParamType.String,
        ),
        'submitted': serializeParam(
          _submitted,
          ParamType.String,
        ),
        'notificationChannel': serializeParam(
          _notificationChannel,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationDataStruct(
        encodedId: deserializeParam(
          data['encodedId'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        body: deserializeParam(
          data['body'],
          ParamType.String,
          false,
        ),
        destination: deserializeParam(
          data['destination'],
          ParamType.String,
          false,
        ),
        recordStatus: deserializeParam(
          data['recordStatus'],
          ParamType.String,
          false,
        ),
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        submissionDate: deserializeParam(
          data['submissionDate'],
          ParamType.String,
          false,
        ),
        submitted: deserializeParam(
          data['submitted'],
          ParamType.String,
          false,
        ),
        notificationChannel: deserializeParam(
          data['notificationChannel'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationDataStruct &&
        encodedId == other.encodedId &&
        title == other.title &&
        body == other.body &&
        destination == other.destination &&
        recordStatus == other.recordStatus &&
        language == other.language &&
        submissionDate == other.submissionDate &&
        submitted == other.submitted &&
        notificationChannel == other.notificationChannel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        encodedId,
        title,
        body,
        destination,
        recordStatus,
        language,
        submissionDate,
        submitted,
        notificationChannel
      ]);
}

NotificationDataStruct createNotificationDataStruct({
  String? encodedId,
  String? title,
  String? body,
  String? destination,
  String? recordStatus,
  String? language,
  String? submissionDate,
  String? submitted,
  String? notificationChannel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationDataStruct(
      encodedId: encodedId,
      title: title,
      body: body,
      destination: destination,
      recordStatus: recordStatus,
      language: language,
      submissionDate: submissionDate,
      submitted: submitted,
      notificationChannel: notificationChannel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationDataStruct? updateNotificationDataStruct(
  NotificationDataStruct? notificationData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationDataStructData(
  Map<String, dynamic> firestoreData,
  NotificationDataStruct? notificationData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationData == null) {
    return;
  }
  if (notificationData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notificationData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationDataData =
      getNotificationDataFirestoreData(notificationData, forFieldValue);
  final nestedData =
      notificationDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notificationData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationDataFirestoreData(
  NotificationDataStruct? notificationData, [
  bool forFieldValue = false,
]) {
  if (notificationData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationData.toMap());

  // Add any Firestore field values
  notificationData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationDataListFirestoreData(
  List<NotificationDataStruct>? notificationDatas,
) =>
    notificationDatas
        ?.map((e) => getNotificationDataFirestoreData(e, true))
        .toList() ??
    [];
