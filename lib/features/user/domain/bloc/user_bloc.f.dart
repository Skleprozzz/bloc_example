import 'dart:async';

import 'package:admin_panel/features/user/domain/service/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.f.freezed.dart';
part 'user_event.f.dart';
part 'user_state.f.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userService}) : super(const UserStateLoading()) {
    on<GetUserInfo>(_getUserInfo);

    add(const UserEvent.getUserInfo());
  }

  final UserService userService;

  FutureOr<void> _getUserInfo(
    GetUserInfo event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserStateLoading());
    final result = await userService.getUserInfo();

    result.fold(
      (l) => emit(const UserStateUnauthorized()),
      (r) => emit(
        UserStateAuthorized(phone: r.phone, permissions: r.permissions),
      ),
    );
  }
}
