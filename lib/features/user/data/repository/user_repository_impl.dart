import 'package:admin_panel/core/failures/failure.dart';
import 'package:admin_panel/features/user/domain/models/user_model.f.dart';
import 'package:admin_panel/features/user/domain/repository/user_repository.dart';
import 'package:admin_panel/network/api/network_api/network_client.dart';
import 'package:dartz/dartz.dart';

final class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({required this.networkClient});

  final NetworkClient networkClient;

  @override
  Future<Either<ApiFailure, UserModel>> getUserInfo() async {
    try {
      final result = await networkClient.getUser();
      
      return Right(
        UserModel(
          permissions: result.permissions.toList(),
          phone: result.phone,
        ),
      );
    } on ApiFailure catch (e) {
      return Left(e);
    }
  }
}
