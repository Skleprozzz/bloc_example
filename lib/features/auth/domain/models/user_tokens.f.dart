import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tokens.f.freezed.dart';

@freezed
class UserTokens with _$UserTokens {
  const factory UserTokens({
    required String access,
    required String refresh,
  }) = _UserTokens;
}
