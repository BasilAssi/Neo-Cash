import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
  }

  void updateRegisterationFormDataStruct(
      Function(RegisterationFormDataStruct) updateFn) {
    updateFn(_registerationFormData);
  }
}
