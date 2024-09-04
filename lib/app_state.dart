import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_registerationFormData') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_registerationFormData') ?? '{}';
          _registerationFormData =
              RegisterationFormDataStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_AuthenticatedUser') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_AuthenticatedUser') ?? '{}';
          _AuthenticatedUser = AuthenticatedUserStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_cardData') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_cardData') ?? '{}';
          _cardData =
              CardDataStruct.fromSerializableMap(jsonDecode(serializedData));
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

  late FlutterSecureStorage secureStorage;

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
      RegisterationFormDataStruct.fromSerializableMap(jsonDecode(
          '{\"ResidentOfTheCountry\":\"RESIDENT\",\"IsUSPassportHolder\":\"false\",\"AddressText\":\" \",\"IsTrueBeneficiaryAccount\":\"true\",\"isPEP\":\"false\"}'));
  RegisterationFormDataStruct get registerationFormData =>
      _registerationFormData;
  set registerationFormData(RegisterationFormDataStruct value) {
    _registerationFormData = value;
    secureStorage.setString('ff_registerationFormData', value.serialize());
  }

  void deleteRegisterationFormData() {
    secureStorage.delete(key: 'ff_registerationFormData');
  }

  void updateRegisterationFormDataStruct(
      Function(RegisterationFormDataStruct) updateFn) {
    updateFn(_registerationFormData);
    secureStorage.setString(
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

  AuthenticatedUserStruct _AuthenticatedUser = AuthenticatedUserStruct();
  AuthenticatedUserStruct get AuthenticatedUser => _AuthenticatedUser;
  set AuthenticatedUser(AuthenticatedUserStruct value) {
    _AuthenticatedUser = value;
    secureStorage.setString('ff_AuthenticatedUser', value.serialize());
  }

  void deleteAuthenticatedUser() {
    secureStorage.delete(key: 'ff_AuthenticatedUser');
  }

  void updateAuthenticatedUserStruct(
      Function(AuthenticatedUserStruct) updateFn) {
    updateFn(_AuthenticatedUser);
    secureStorage.setString(
        'ff_AuthenticatedUser', _AuthenticatedUser.serialize());
  }

  CardDataStruct _cardData = CardDataStruct();
  CardDataStruct get cardData => _cardData;
  set cardData(CardDataStruct value) {
    _cardData = value;
    secureStorage.setString('ff_cardData', value.serialize());
  }

  void deleteCardData() {
    secureStorage.delete(key: 'ff_cardData');
  }

  void updateCardDataStruct(Function(CardDataStruct) updateFn) {
    updateFn(_cardData);
    secureStorage.setString('ff_cardData', _cardData.serialize());
  }

  FilterTransactionsStruct _filterTransactions = FilterTransactionsStruct();
  FilterTransactionsStruct get filterTransactions => _filterTransactions;
  set filterTransactions(FilterTransactionsStruct value) {
    _filterTransactions = value;
  }

  void updateFilterTransactionsStruct(
      Function(FilterTransactionsStruct) updateFn) {
    updateFn(_filterTransactions);
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

  final _documentsTypesAPIResponseManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> documentsTypesAPIResponse({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _documentsTypesAPIResponseManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDocumentsTypesAPIResponseCache() =>
      _documentsTypesAPIResponseManager.clear();
  void clearDocumentsTypesAPIResponseCacheKey(String? uniqueKey) =>
      _documentsTypesAPIResponseManager.clearRequest(uniqueKey);
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
