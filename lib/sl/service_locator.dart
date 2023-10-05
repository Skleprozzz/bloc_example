import 'package:admin_panel/features/auth/data/repository/auth_repository_impl.dart';
import 'package:admin_panel/features/auth/domain/repository/auth_repository.dart';
import 'package:admin_panel/features/auth/domain/services/auth_service.dart';
import 'package:admin_panel/features/user/data/repository/user_repository_impl.dart';
import 'package:admin_panel/features/user/domain/repository/user_repository.dart';
import 'package:admin_panel/features/user/domain/service/user_service.dart';
import 'package:admin_panel/network/api/network_api/network_client.dart';
import 'package:admin_panel/network/api/network_api/network_client_impl.dart';
import 'package:admin_panel/network/core/dio_provider/dio_provider.dart';
import 'package:admin_panel/network/core/network_service.dart';
import 'package:admin_panel/network/core/network_service_impl.dart';
import 'package:admin_panel/services/cache_service/cache_service.dart';
import 'package:admin_panel/services/secure_storage/secure_storage.dart';
import 'package:admin_panel/services/token_service/tokens_persistence.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> slInit() async {
  await sl.reset();

  final cacheServiceImpl = CacheServiceImpl();
  await cacheServiceImpl.init();

  sl
    ..registerLazySingleton<SecureStorage>(() => SecureStorageImpl()..init())
    ..registerFactory<TokensPersistence>(
      () => TokensPersistenceImpl(secureStorage: sl.get<SecureStorage>()),
    )
    ..registerLazySingleton<CacheService>(() => cacheServiceImpl)
    ..registerFactory<DioProvider>(
      DioProviderImpl.new,
    )
    ..registerFactory<NetworkService>(
      () => NetworkServiceImpl(
        sl.get<DioProvider>(),
      ),
    )
    ..registerLazySingleton<NetworkClient>(
      () => NetworkClientImpl(
        networkService: sl.get<NetworkService>(),
      ),
    );

  _initRepositories();
  _initServices();
}

Future<void> diDispose() => sl.reset();

void _initRepositories() {
  sl
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(networkClient: sl.get<NetworkClient>()),
    )
    ..registerFactory<UserRepository>(
      () => UserRepositoryImpl(networkClient: sl.get<NetworkClient>()),
    );
}

void _initServices() {
  sl
    ..registerLazySingleton<AuthService>(
      () => AuthService(
        authRepository: sl.get<AuthRepository>(),
        tokensPersistence: sl.get<TokensPersistence>(),
      ),
    )
    ..registerLazySingleton<UserService>(
      () => UserService(
        userRepository: sl.get<UserRepository>(),
      ),
    );
}
