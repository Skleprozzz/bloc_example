import 'package:admin_panel/core/failures/failure.dart';
import 'package:admin_panel/features/user/domain/models/user_model.f.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract interface class UserRepository {
  Future<Either<ApiFailure, UserModel>> getUserInfo();
}
