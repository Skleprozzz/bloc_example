import 'package:shared_preferences/shared_preferences.dart';

abstract interface class CacheService {
  Future<void> init();
  Future<bool> writeValue({required String key, required Object value});
  T? readValue<T>({required String key});
  Future<void> remove({required String key});
  Future<void> removeAll();
  Future<void> reload();
}

final class CacheServiceImpl implements CacheService {
  factory CacheServiceImpl() {
    return _instance;
  }

  CacheServiceImpl._internal();

  late final SharedPreferences sharedPreference;

  static final CacheServiceImpl _instance = CacheServiceImpl._internal();

  @override
  Future<void> init() async {
    await CacheServiceImpl._instance._init();
  }

  @override
  Future<bool> writeValue({required String key, required Object value}) async {
    return switch (value.runtimeType) {
      int => sharedPreference.setInt(key, value as int),
      double => sharedPreference.setDouble(key, value as double),
      bool => sharedPreference.setBool(key, value as bool),
      String => sharedPreference.setString(key, value as String),
      const (List<String>) =>
        sharedPreference.setStringList(key, value as List<String>),
      _ => sharedPreference.setString(key, value.toString()),
    };
  }

  @override
  T? readValue<T>({required String key}) {
    return switch (T) {
      int => sharedPreference.getInt(key) as T?,
      double => sharedPreference.getDouble(key) as T?,
      bool => sharedPreference.getBool(key) as T?,
      String => sharedPreference.getString(key) as T?,
      const (List<String>) => sharedPreference.getStringList(key) as T?,
      _ => sharedPreference.getString(key) as T?
    };
  }

  @override
  Future<void> remove({required String key}) async {
    await sharedPreference.remove(key);
  }

  @override
  Future<void> removeAll() async {
    await sharedPreference.clear();
  }

  @override
  Future<void> reload() async {
    await sharedPreference.reload();
  }

  Future<void> _init() async {
    sharedPreference = await SharedPreferences.getInstance();
  }
}
