part of 'user_bloc.f.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = UserStateLoading;
  const factory UserState.unAuthorized() = UserStateUnauthorized;
  const factory UserState.authorized({
    required List<String> permissions,
    required String phone,
  }) = UserStateAuthorized;
}
