part of 'auth_bloc.f.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String login,
    required String password,
  }) = Login;
  const factory AuthEvent.logout() = Logout;
  const factory AuthEvent.checkUserState() = CheckUserState;
}
