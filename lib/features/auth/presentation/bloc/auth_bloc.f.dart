import 'dart:async';

import 'package:admin_panel/features/auth/domain/failure/auth_failure.dart';
import 'package:admin_panel/features/auth/domain/models/user_tokens.f.dart';
import 'package:admin_panel/features/auth/domain/services/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.f.freezed.dart';
part 'auth_event.f.dart';
part 'auth_state.f.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authService}) : super(const AuthStateLoading()) {
    on<Login>(_login);
    on<Logout>(_logout);
    on<CheckUserState>(_checkUserState);

    _subscribeOnTokensState();
    add(const CheckUserState());
  }

  final AuthService authService;
  StreamSubscription<UserTokens?>? userTokensSubscription;

  @override
  Future<void> close() {
    userTokensSubscription?.cancel();

    return super.close();
  }

  void _subscribeOnTokensState() {
    userTokensSubscription = authService.authStream.listen(
      (event) {
        if (event == null) {
          add(const Logout());
        }
      },
    );
  }

  FutureOr<void> _login(
    Login event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());
    final result = await authService.login(
      login: event.login,
      password: event.password,
    );
    result.fold(
      (l) => emit(AuthStateError(authFailure: l)),
      (r) => emit(const AuthStateAuthorized()),
    );
  }

  FutureOr<void> _logout(
    Logout event,
    Emitter<AuthState> emit,
  ) async {
    await authService.logout();
    emit(const AuthStateUnAuthorized());
  }

  FutureOr<void> _checkUserState(
    CheckUserState event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthStateLoading());
    final isUserLoggedIn = await authService.isUserAuthenticated();
    if (isUserLoggedIn) {
      emit(const AuthStateAuthorized());
    } else {
      emit(const AuthStateUnAuthorized());
    }
  }
}
