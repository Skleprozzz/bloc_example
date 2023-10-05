import 'package:admin_panel/core/failures/failure.dart';
import 'package:admin_panel/features/auth/domain/models/user_tokens.f.dart';
import 'package:admin_panel/features/auth/domain/repository/auth_repository.dart';
import 'package:admin_panel/network/api/network_api/network_client.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

final class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.networkClient});

  final NetworkClient networkClient;

  @override
  Future<Either<ApiFailure, UserTokens>> login({
    required String login,
    required String password,
  }) async {
    try {
      final result =
          await networkClient.postLogin(phone: login, password: password);
          
      return Right(
        UserTokens(access: result.access, refresh: result.refresh),
      );
    } on DioException catch (e) {
      return Left(
        ApiFailure(
          message: e.message,
          responseCode: e.response?.statusCode ?? 0,
        ),
      );
    }
  }

  @override
  Future<Either<ApiFailure, UserTokens>> refresh({
    required String refresh,
  }) async {
    try {
      final result = await networkClient.postRefresh(refresh: refresh);

      return Right(
        UserTokens(access: result.access, refresh: result.refresh),
      );
    } on DioException catch (e) {
      return Left(
        ApiFailure(
          message: e.message,
          responseCode: e.response?.statusCode ?? 0,
        ),
      );
    }
  }
}
