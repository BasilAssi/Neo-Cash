// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CustomerDocumentsStruct extends FFFirebaseStruct {
  CustomerDocumentsStruct({
    String? documentType,
    String? documentUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _documentType = documentType,
        _documentUrl = documentUrl,
        super(firestoreUtilData);

  // "documentType" field.
  String? _documentType;
  String get documentType => _documentType ?? '';
  set documentType(String? val) => _documentType = val;

  bool hasDocumentType() => _documentType != null;

  // "documentUrl" field.
  String? _documentUrl;
  String get documentUrl => _documentUrl ?? '';
  set documentUrl(String? val) => _documentUrl = val;

  bool hasDocumentUrl() => _documentUrl != null;

  static CustomerDocumentsStruct fromMap(Map<String, dynamic> data) =>
      CustomerDocumentsStruct(
        documentType: data['documentType'] as String?,
        documentUrl: data['documentUrl'] as String?,
      );

  static CustomerDocumentsStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerDocumentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'documentType': _documentType,
        'documentUrl': _documentUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'documentType': serializeParam(
          _documentType,
          ParamType.String,
        ),
        'documentUrl': serializeParam(
          _documentUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerDocumentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerDocumentsStruct(
        documentType: deserializeParam(
          data['documentType'],
          ParamType.String,
          false,
        ),
        documentUrl: deserializeParam(
          data['documentUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerDocumentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerDocumentsStruct &&
        documentType == other.documentType &&
        documentUrl == other.documentUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([documentType, documentUrl]);
}

CustomerDocumentsStruct createCustomerDocumentsStruct({
  String? documentType,
  String? documentUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustomerDocumentsStruct(
      documentType: documentType,
      documentUrl: documentUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CustomerDocumentsStruct? updateCustomerDocumentsStruct(
  CustomerDocumentsStruct? customerDocuments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    customerDocuments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCustomerDocumentsStructData(
  Map<String, dynamic> firestoreData,
  CustomerDocumentsStruct? customerDocuments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (customerDocuments == null) {
    return;
  }
  if (customerDocuments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && customerDocuments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final customerDocumentsData =
      getCustomerDocumentsFirestoreData(customerDocuments, forFieldValue);
  final nestedData =
      customerDocumentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = customerDocuments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustomerDocumentsFirestoreData(
  CustomerDocumentsStruct? customerDocuments, [
  bool forFieldValue = false,
]) {
  if (customerDocuments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(customerDocuments.toMap());

  // Add any Firestore field values
  customerDocuments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustomerDocumentsListFirestoreData(
  List<CustomerDocumentsStruct>? customerDocumentss,
) =>
    customerDocumentss
        ?.map((e) => getCustomerDocumentsFirestoreData(e, true))
        .toList() ??
    [];
