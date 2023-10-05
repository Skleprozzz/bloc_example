part of 'auth_bloc.f.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.unAuthorized() = AuthStateUnAuthorized;
  const factory AuthState.authorized() = AuthStateAuthorized;
  const factory AuthState.authError({required AuthFailure authFailure}) =
      AuthStateError;
}
