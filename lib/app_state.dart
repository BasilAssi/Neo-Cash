import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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

  List<DateTypeStruct> _DateListLookUp = [
    DateTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"today\",\"start_date\":\"1721558916474\",\"end_date\":\"1721558916474\",\"date_enum\":\"TODAY\"}')),
    DateTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"lastWeek\",\"start_date\":\"1721558951315\",\"end_date\":\"1721558951315\",\"date_enum\":\"LAST_WEEK\"}')),
    DateTypeStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Hello World\",\"start_date\":\"1721559025960\",\"end_date\":\"1721559025960\",\"date_enum\":\"LAST_MONTH\"}'))
  ];
  List<DateTypeStruct> get DateListLookUp => _DateListLookUp;
  set DateListLookUp(List<DateTypeStruct> value) {
    _DateListLookUp = value;
  }

  void addToDateListLookUp(DateTypeStruct value) {
    DateListLookUp.add(value);
  }

  void removeFromDateListLookUp(DateTypeStruct value) {
    DateListLookUp.remove(value);
  }

  void removeAtIndexFromDateListLookUp(int index) {
    DateListLookUp.removeAt(index);
  }

  void updateDateListLookUpAtIndex(
    int index,
    DateTypeStruct Function(DateTypeStruct) updateFn,
  ) {
    DateListLookUp[index] = updateFn(_DateListLookUp[index]);
  }

  void insertAtIndexInDateListLookUp(int index, DateTypeStruct value) {
    DateListLookUp.insert(index, value);
  }
}
