// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerUploadedDocumentsStruct extends BaseStruct {
  CustomerUploadedDocumentsStruct({
    String? name,
    int? size,
    String? type,
    String? url,
    String? deleteUrl,
    String? deleteType,
  })  : _name = name,
        _size = size,
        _type = type,
        _url = url,
        _deleteUrl = deleteUrl,
        _deleteType = deleteType;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "size" field.
  int? _size;
  int get size => _size ?? 0;
  set size(int? val) => _size = val;

  void incrementSize(int amount) => size = size + amount;

  bool hasSize() => _size != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "deleteUrl" field.
  String? _deleteUrl;
  String get deleteUrl => _deleteUrl ?? '';
  set deleteUrl(String? val) => _deleteUrl = val;

  bool hasDeleteUrl() => _deleteUrl != null;

  // "deleteType" field.
  String? _deleteType;
  String get deleteType => _deleteType ?? '';
  set deleteType(String? val) => _deleteType = val;

  bool hasDeleteType() => _deleteType != null;

  static CustomerUploadedDocumentsStruct fromMap(Map<String, dynamic> data) =>
      CustomerUploadedDocumentsStruct(
        name: data['name'] as String?,
        size: castToType<int>(data['size']),
        type: data['type'] as String?,
        url: data['url'] as String?,
        deleteUrl: data['deleteUrl'] as String?,
        deleteType: data['deleteType'] as String?,
      );

  static CustomerUploadedDocumentsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? CustomerUploadedDocumentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'size': _size,
        'type': _type,
        'url': _url,
        'deleteUrl': _deleteUrl,
        'deleteType': _deleteType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'size': serializeParam(
          _size,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'deleteUrl': serializeParam(
          _deleteUrl,
          ParamType.String,
        ),
        'deleteType': serializeParam(
          _deleteType,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerUploadedDocumentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustomerUploadedDocumentsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        deleteUrl: deserializeParam(
          data['deleteUrl'],
          ParamType.String,
          false,
        ),
        deleteType: deserializeParam(
          data['deleteType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerUploadedDocumentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerUploadedDocumentsStruct &&
        name == other.name &&
        size == other.size &&
        type == other.type &&
        url == other.url &&
        deleteUrl == other.deleteUrl &&
        deleteType == other.deleteType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, size, type, url, deleteUrl, deleteType]);
}

CustomerUploadedDocumentsStruct createCustomerUploadedDocumentsStruct({
  String? name,
  int? size,
  String? type,
  String? url,
  String? deleteUrl,
  String? deleteType,
}) =>
    CustomerUploadedDocumentsStruct(
      name: name,
      size: size,
      type: type,
      url: url,
      deleteUrl: deleteUrl,
      deleteType: deleteType,
    );
