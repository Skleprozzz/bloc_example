import 'package:admin_panel/core/failures/failure.dart';
import 'package:admin_panel/features/auth/domain/models/user_tokens.f.dart';
import 'package:dartz/dartz.dart';

abstract interface class AuthRepository {
  Future<Either<ApiFailure, UserTokens>> login({
    required String login,
    required String password,
  });
  Future<Either<ApiFailure, UserTokens>> refresh({required String refresh});
}
