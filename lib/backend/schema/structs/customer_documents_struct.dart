// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerDocumentsStruct extends BaseStruct {
  CustomerDocumentsStruct({
    String? documentType,
    String? documentUrl,
  })  : _documentType = documentType,
        _documentUrl = documentUrl;

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
}) =>
    CustomerDocumentsStruct(
      documentType: documentType,
      documentUrl: documentUrl,
    );
