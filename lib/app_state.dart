import 'package:flutter/material.dart';

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

  List<String> _images = [
    'https://picsum.photos/seed/720/600',
    'https://picsum.photos/seed/196/600',
    'https://picsum.photos/seed/329/600',
    'https://picsum.photos/seed/429/600'
  ];
  List<String> get images => _images;
  set images(List<String> value) {
    _images = value;
  }

  void addToImages(String value) {
    images.add(value);
  }

  void removeFromImages(String value) {
    images.remove(value);
  }

  void removeAtIndexFromImages(int index) {
    images.removeAt(index);
  }

  void updateImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    images[index] = updateFn(_images[index]);
  }

  void insertAtIndexInImages(int index, String value) {
    images.insert(index, value);
  }
}
