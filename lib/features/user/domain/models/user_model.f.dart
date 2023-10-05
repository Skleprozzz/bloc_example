
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.f.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required List<String> permissions,
    required String phone,
  }) = _UserModel;
}
