// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
    required TResult Function() checkUserState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
    TResult? Function()? checkUserState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    TResult Function()? checkUserState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckUserState value) checkUserState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckUserState value)? checkUserState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(CheckUserState value)? checkUserState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$Login>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$Login(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Login implements Login {
  const _$Login({required this.login, required this.password});

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Login &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCopyWith<_$Login> get copyWith =>
      __$$LoginCopyWithImpl<_$Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
    required TResult Function() checkUserState,
  }) {
    return login(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
    TResult? Function()? checkUserState,
  }) {
    return login?.call(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    TResult Function()? checkUserState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckUserState value) checkUserState,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckUserState value)? checkUserState,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(CheckUserState value)? checkUserState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthEvent {
  const factory Login(
      {required final String login, required final String password}) = _$Login;

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginCopyWith<_$Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Logout>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
    required TResult Function() checkUserState,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
    TResult? Function()? checkUserState,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    TResult Function()? checkUserState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckUserState value) checkUserState,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckUserState value)? checkUserState,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(CheckUserState value)? checkUserState,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class _$$CheckUserStateCopyWith<$Res> {
  factory _$$CheckUserStateCopyWith(
          _$CheckUserState value, $Res Function(_$CheckUserState) then) =
      __$$CheckUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserStateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserState>
    implements _$$CheckUserStateCopyWith<$Res> {
  __$$CheckUserStateCopyWithImpl(
      _$CheckUserState _value, $Res Function(_$CheckUserState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckUserState implements CheckUserState {
  const _$CheckUserState();

  @override
  String toString() {
    return 'AuthEvent.checkUserState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
    required TResult Function() checkUserState,
  }) {
    return checkUserState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
    TResult? Function()? checkUserState,
  }) {
    return checkUserState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    TResult Function()? checkUserState,
    required TResult orElse(),
  }) {
    if (checkUserState != null) {
      return checkUserState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Logout value) logout,
    required TResult Function(CheckUserState value) checkUserState,
  }) {
    return checkUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Logout value)? logout,
    TResult? Function(CheckUserState value)? checkUserState,
  }) {
    return checkUserState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Logout value)? logout,
    TResult Function(CheckUserState value)? checkUserState,
    required TResult orElse(),
  }) {
    if (checkUserState != null) {
      return checkUserState(this);
    }
    return orElse();
  }
}

abstract class CheckUserState implements AuthEvent {
  const factory CheckUserState() = _$CheckUserState;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function() authorized,
    required TResult Function(AuthFailure authFailure) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function()? authorized,
    TResult? Function(AuthFailure authFailure)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function()? authorized,
    TResult Function(AuthFailure authFailure)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnAuthorized value) unAuthorized,
    required TResult Function(AuthStateAuthorized value) authorized,
    required TResult Function(AuthStateError value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult? Function(AuthStateAuthorized value)? authorized,
    TResult? Function(AuthStateError value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult Function(AuthStateAuthorized value)? authorized,
    TResult Function(AuthStateError value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateLoadingCopyWith<$Res> {
  factory _$$AuthStateLoadingCopyWith(
          _$AuthStateLoading value, $Res Function(_$AuthStateLoading) then) =
      __$$AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoading>
    implements _$$AuthStateLoadingCopyWith<$Res> {
  __$$AuthStateLoadingCopyWithImpl(
      _$AuthStateLoading _value, $Res Function(_$AuthStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function() authorized,
    required TResult Function(AuthFailure authFailure) authError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function()? authorized,
    TResult? Function(AuthFailure authFailure)? authError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function()? authorized,
    TResult Function(AuthFailure authFailure)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnAuthorized value) unAuthorized,
    required TResult Function(AuthStateAuthorized value) authorized,
    required TResult Function(AuthStateError value) authError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult? Function(AuthStateAuthorized value)? authorized,
    TResult? Function(AuthStateError value)? authError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult Function(AuthStateAuthorized value)? authorized,
    TResult Function(AuthStateError value)? authError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

/// @nodoc
abstract class _$$AuthStateUnAuthorizedCopyWith<$Res> {
  factory _$$AuthStateUnAuthorizedCopyWith(_$AuthStateUnAuthorized value,
          $Res Function(_$AuthStateUnAuthorized) then) =
      __$$AuthStateUnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnAuthorized>
    implements _$$AuthStateUnAuthorizedCopyWith<$Res> {
  __$$AuthStateUnAuthorizedCopyWithImpl(_$AuthStateUnAuthorized _value,
      $Res Function(_$AuthStateUnAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateUnAuthorized implements AuthStateUnAuthorized {
  const _$AuthStateUnAuthorized();

  @override
  String toString() {
    return 'AuthState.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateUnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function() authorized,
    required TResult Function(AuthFailure authFailure) authError,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function()? authorized,
    TResult? Function(AuthFailure authFailure)? authError,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function()? authorized,
    TResult Function(AuthFailure authFailure)? authError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnAuthorized value) unAuthorized,
    required TResult Function(AuthStateAuthorized value) authorized,
    required TResult Function(AuthStateError value) authError,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult? Function(AuthStateAuthorized value)? authorized,
    TResult? Function(AuthStateError value)? authError,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult Function(AuthStateAuthorized value)? authorized,
    TResult Function(AuthStateError value)? authError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateUnAuthorized implements AuthState {
  const factory AuthStateUnAuthorized() = _$AuthStateUnAuthorized;
}

/// @nodoc
abstract class _$$AuthStateAuthorizedCopyWith<$Res> {
  factory _$$AuthStateAuthorizedCopyWith(_$AuthStateAuthorized value,
          $Res Function(_$AuthStateAuthorized) then) =
      __$$AuthStateAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthorized>
    implements _$$AuthStateAuthorizedCopyWith<$Res> {
  __$$AuthStateAuthorizedCopyWithImpl(
      _$AuthStateAuthorized _value, $Res Function(_$AuthStateAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateAuthorized implements AuthStateAuthorized {
  const _$AuthStateAuthorized();

  @override
  String toString() {
    return 'AuthState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function() authorized,
    required TResult Function(AuthFailure authFailure) authError,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function()? authorized,
    TResult? Function(AuthFailure authFailure)? authError,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function()? authorized,
    TResult Function(AuthFailure authFailure)? authError,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnAuthorized value) unAuthorized,
    required TResult Function(AuthStateAuthorized value) authorized,
    required TResult Function(AuthStateError value) authError,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult? Function(AuthStateAuthorized value)? authorized,
    TResult? Function(AuthStateError value)? authError,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult Function(AuthStateAuthorized value)? authorized,
    TResult Function(AuthStateError value)? authError,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthorized implements AuthState {
  const factory AuthStateAuthorized() = _$AuthStateAuthorized;
}

/// @nodoc
abstract class _$$AuthStateErrorCopyWith<$Res> {
  factory _$$AuthStateErrorCopyWith(
          _$AuthStateError value, $Res Function(_$AuthStateError) then) =
      __$$AuthStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure authFailure});
}

/// @nodoc
class __$$AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateError>
    implements _$$AuthStateErrorCopyWith<$Res> {
  __$$AuthStateErrorCopyWithImpl(
      _$AuthStateError _value, $Res Function(_$AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authFailure = freezed,
  }) {
    return _then(_$AuthStateError(
      authFailure: freezed == authFailure
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }
}

/// @nodoc

class _$AuthStateError implements AuthStateError {
  const _$AuthStateError({required this.authFailure});

  @override
  final AuthFailure authFailure;

  @override
  String toString() {
    return 'AuthState.authError(authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateError &&
            const DeepCollectionEquality()
                .equals(other.authFailure, authFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authFailure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorCopyWith<_$AuthStateError> get copyWith =>
      __$$AuthStateErrorCopyWithImpl<_$AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function() authorized,
    required TResult Function(AuthFailure authFailure) authError,
  }) {
    return authError(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function()? authorized,
    TResult? Function(AuthFailure authFailure)? authError,
  }) {
    return authError?.call(authFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function()? authorized,
    TResult Function(AuthFailure authFailure)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(authFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnAuthorized value) unAuthorized,
    required TResult Function(AuthStateAuthorized value) authorized,
    required TResult Function(AuthStateError value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult? Function(AuthStateAuthorized value)? authorized,
    TResult? Function(AuthStateError value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnAuthorized value)? unAuthorized,
    TResult Function(AuthStateAuthorized value)? authorized,
    TResult Function(AuthStateError value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError({required final AuthFailure authFailure}) =
      _$AuthStateError;

  AuthFailure get authFailure;
  @JsonKey(ignore: true)
  _$$AuthStateErrorCopyWith<_$AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
