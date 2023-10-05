import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract interface class SecureStorage {
  void init();
  Future<void> writeValue({required String key, required String value});
  Future<String?> readValue({required String key});
  Future<void> remove({required String key});
  Future<void> removeAll();
}

final class SecureStorageImpl implements SecureStorage {
  factory SecureStorageImpl() {
    return _instance;
  }
  SecureStorageImpl._internal();

  static const String sharedPrefsName = 'secure_storage';

  late final FlutterSecureStorage storage;

  static const iOSOptions = IOSOptions(
    synchronizable: true,
    accessibility: KeychainAccessibility.first_unlock,
  );

  static const androidOptions = AndroidOptions(
    sharedPreferencesName: sharedPrefsName,
    encryptedSharedPreferences: true,
  );

  static final SecureStorageImpl _instance = SecureStorageImpl._internal();

  @override
  void init() {
    storage = const FlutterSecureStorage(
      aOptions: androidOptions,
      iOptions: iOSOptions,
    );
  }

  @override
  Future<void> writeValue({required String key, required String value}) async {
    await storage.write(
      key: key,
      value: value,
      aOptions: androidOptions,
      iOptions: iOSOptions,
    );
  }

  @override
  Future<String?> readValue({required String key}) async {
    return storage.read(
      key: key,
      aOptions: androidOptions,
      iOptions: iOSOptions,
    );
  }

  @override
  Future<void> remove({required String key}) async {
    await storage.delete(
      key: key,
      aOptions: androidOptions,
      iOptions: iOSOptions,
    );
  }

  @override
  Future<void> removeAll() async {
    await storage.deleteAll(aOptions: androidOptions, iOptions: iOSOptions);
  }
}
