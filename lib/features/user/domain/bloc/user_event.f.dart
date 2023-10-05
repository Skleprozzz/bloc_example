part of 'user_bloc.f.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUserInfo() = GetUserInfo;
}
