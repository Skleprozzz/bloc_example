import 'package:admin_panel/services/secure_storage/secure_storage.dart';
import 'package:admin_panel/services/token_service/entity/user_tokens_sm.dart';
import 'package:rxdart/rxdart.dart';

abstract class _TokensKeys {
  static const String accessTokenKey = 'ACCESS_TOKEN_KEY';
  static const String refreshTokenKey = 'REFRESH_TOKEN_KEY';
}

abstract class TokensPersistence {
  Stream<UserTokensSM?> get tokensStream;
  UserTokensSM? get tokens;
  String? get accessToken;
  String? get refreshToken;
  Future<void> fetchTokens();
  Future<void> setTokens(String auth, String refresh);

  Future<void> removeTokens();
}

class TokensPersistenceImpl implements TokensPersistence {
  TokensPersistenceImpl({required this.secureStorage});

  final SecureStorage secureStorage;

  final BehaviorSubject<UserTokensSM?> _tokensSubject =
      BehaviorSubject<UserTokensSM?>();

  @override
  Stream<UserTokensSM?> get tokensStream => _tokensSubject.stream.distinct();

  @override
  UserTokensSM? get tokens =>
      _tokensSubject.hasValue ? _tokensSubject.value : null;

  @override
  String? get accessToken =>
      _tokensSubject.hasValue ? _tokensSubject.value?.access : null;

  @override
  String? get refreshToken =>
      _tokensSubject.hasValue ? _tokensSubject.value?.refresh : null;

  @override
  Future<void> setTokens(String access, String refresh) async {
    await secureStorage.writeValue(
      key: _TokensKeys.accessTokenKey,
      value: access,
    );
    await secureStorage.writeValue(
      key: _TokensKeys.refreshTokenKey,
      value: refresh,
    );

    _tokensSubject.add(
      UserTokensSM(
        access: access,
        refresh: refresh,
      ),
    );
  }

  @override
  Future<void> fetchTokens() async {
    final accessToken =
        await secureStorage.readValue(key: _TokensKeys.accessTokenKey);
    final refreshToken =
        await secureStorage.readValue(key: _TokensKeys.refreshTokenKey);

    if (accessToken != null && refreshToken != null) {
      _tokensSubject
          .add(UserTokensSM(access: accessToken, refresh: refreshToken));
    } else if (accessToken == null || refreshToken == null) {
      await removeTokens();
    }
  }

  @override
  Future<void> removeTokens() async {
    await secureStorage.remove(key: _TokensKeys.accessTokenKey);
    await secureStorage.remove(key: _TokensKeys.refreshTokenKey);

    _tokensSubject.add(null);
  }

  void dispose() {
    _tokensSubject.close();
  }
}
