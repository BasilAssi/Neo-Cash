import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_registerationFormData')) {
        try {
          final serializedData =
              prefs.getString('ff_registerationFormData') ?? '{}';
          _registerationFormData =
              RegisterationFormDataStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isEnglish = false;
  bool get isEnglish => _isEnglish;
  set isEnglish(bool value) {
    _isEnglish = value;
  }

  DeviceInfoStruct _deviceInformation = DeviceInfoStruct();
  DeviceInfoStruct get deviceInformation => _deviceInformation;
  set deviceInformation(DeviceInfoStruct value) {
    _deviceInformation = value;
  }

  void updateDeviceInformationStruct(Function(DeviceInfoStruct) updateFn) {
    updateFn(_deviceInformation);
  }

  RegisterationFormDataStruct _registerationFormData =
      RegisterationFormDataStruct();
  RegisterationFormDataStruct get registerationFormData =>
      _registerationFormData;
  set registerationFormData(RegisterationFormDataStruct value) {
    _registerationFormData = value;
    prefs.setString('ff_registerationFormData', value.serialize());
  }

  void updateRegisterationFormDataStruct(
      Function(RegisterationFormDataStruct) updateFn) {
    updateFn(_registerationFormData);
    prefs.setString(
        'ff_registerationFormData', _registerationFormData.serialize());
  }

  SettingsAppStruct _AppSettings = SettingsAppStruct();
  SettingsAppStruct get AppSettings => _AppSettings;
  set AppSettings(SettingsAppStruct value) {
    _AppSettings = value;
  }

  void updateAppSettingsStruct(Function(SettingsAppStruct) updateFn) {
    updateFn(_AppSettings);
  }

  final _citesAPIResponseManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> citesAPIResponse({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _citesAPIResponseManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCitesAPIResponseCache() => _citesAPIResponseManager.clear();
  void clearCitesAPIResponseCacheKey(String? uniqueKey) =>
      _citesAPIResponseManager.clearRequest(uniqueKey);

  final _nationaltiesAPIResponseManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> nationaltiesAPIResponse({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _nationaltiesAPIResponseManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNationaltiesAPIResponseCache() =>
      _nationaltiesAPIResponseManager.clear();
  void clearNationaltiesAPIResponseCacheKey(String? uniqueKey) =>
      _nationaltiesAPIResponseManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
