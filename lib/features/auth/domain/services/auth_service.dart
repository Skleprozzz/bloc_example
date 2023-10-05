import 'package:admin_panel/features/auth/domain/failure/auth_failure.dart';
import 'package:admin_panel/features/auth/domain/models/user_tokens.f.dart';
import 'package:admin_panel/features/auth/domain/repository/auth_repository.dart';
import 'package:admin_panel/services/token_service/tokens_persistence.dart';
import 'package:dartz/dartz.dart';

final class AuthService {
  AuthService({
    required this.tokensPersistence,
    required this.authRepository,
  });

  final AuthRepository authRepository;
  final TokensPersistence tokensPersistence;

  Future<({String? access, String? refresh})> get getTokens async {
    await tokensPersistence.fetchTokens();

    return (
      access: tokensPersistence.accessToken,
      refresh: tokensPersistence.refreshToken,
    );
  }

  Stream<UserTokens?> get authStream => tokensPersistence.tokensStream.map(
        (event) => event != null
            ? UserTokens(
                access: event.access,
                refresh: event.refresh,
              )
            : null,
      );

  Future<Either<AuthFailure, Unit>> login({
    required String login,
    required String password,
  }) async {
    final result = await authRepository.login(
      login: login,
      password: password,
    );

    return result.fold(
      (l) {
        // here should be auth failure factory
        if (l.responseCode == 401) {
          return const Left(UnauthorizedFailure());
        }

        return const Left(ForbiddenFailure());
      },
      (r) async {
        await tokensPersistence.setTokens(r.access, r.refresh);

        return const Right(unit);
      },
    );
  }

  Future<void> logout() async {
    await tokensPersistence.removeTokens();
  }

  Future<bool> isUserAuthenticated() async {
    await tokensPersistence.fetchTokens();
    final accessToken = tokensPersistence.accessToken;
    final refreshToken = tokensPersistence.refreshToken;
    if (accessToken != null && refreshToken != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<Either<AuthFailure, Unit>> refreshTokens() async {
    await tokensPersistence.fetchTokens();
    final refreshToken = tokensPersistence.refreshToken;
    if (refreshToken != null) {
      final result = await authRepository.refresh(refresh: refreshToken);

      return result.fold(
        (l) async {
          await logout();
          // here should be auth failure factory
          if (l.responseCode == 401) {
            return const Left(UnauthorizedFailure());
          }

          return const Left(ForbiddenFailure());
        },
        (r) async {
          await tokensPersistence.setTokens(r.access, r.refresh);

          return const Right(unit);
        },
      );
    }
    await logout();
    
    return const Left(UnauthorizedFailure());
  }
}
