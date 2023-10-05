import 'package:admin_panel/core/failures/failure.dart';
import 'package:admin_panel/features/user/domain/models/user_model.f.dart';
import 'package:admin_panel/features/user/domain/repository/user_repository.dart';
import 'package:dartz/dartz.dart';

final class UserService {
  const UserService({required this.userRepository});

  final UserRepository userRepository;

  Future<Either<ApiFailure, UserModel>> getUserInfo() async {
    final result = await userRepository.getUserInfo();

    return result.fold(
      Left.new,
      Right.new,
    );
  }
}
