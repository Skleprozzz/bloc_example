// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserInfoCopyWith<$Res> {
  factory _$$GetUserInfoCopyWith(
          _$GetUserInfo value, $Res Function(_$GetUserInfo) then) =
      __$$GetUserInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserInfoCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserInfo>
    implements _$$GetUserInfoCopyWith<$Res> {
  __$$GetUserInfoCopyWithImpl(
      _$GetUserInfo _value, $Res Function(_$GetUserInfo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserInfo implements GetUserInfo {
  const _$GetUserInfo();

  @override
  String toString() {
    return 'UserEvent.getUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserInfo,
  }) {
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserInfo,
  }) {
    return getUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserInfo value) getUserInfo,
  }) {
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserInfo value)? getUserInfo,
  }) {
    return getUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserInfo value)? getUserInfo,
    required TResult orElse(),
  }) {
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfo implements UserEvent {
  const factory GetUserInfo() = _$GetUserInfo;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function(List<String> permissions, String phone)
        authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function(List<String> permissions, String phone)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function(List<String> permissions, String phone)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateUnauthorized value) unAuthorized,
    required TResult Function(UserStateAuthorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateUnauthorized value)? unAuthorized,
    TResult? Function(UserStateAuthorized value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateUnauthorized value)? unAuthorized,
    TResult Function(UserStateAuthorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStateLoadingCopyWith<$Res> {
  factory _$$UserStateLoadingCopyWith(
          _$UserStateLoading value, $Res Function(_$UserStateLoading) then) =
      __$$UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateLoading>
    implements _$$UserStateLoadingCopyWith<$Res> {
  __$$UserStateLoadingCopyWithImpl(
      _$UserStateLoading _value, $Res Function(_$UserStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateLoading implements UserStateLoading {
  const _$UserStateLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function(List<String> permissions, String phone)
        authorized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function(List<String> permissions, String phone)? authorized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function(List<String> permissions, String phone)? authorized,
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
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateUnauthorized value) unAuthorized,
    required TResult Function(UserStateAuthorized value) authorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateUnauthorized value)? unAuthorized,
    TResult? Function(UserStateAuthorized value)? authorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateUnauthorized value)? unAuthorized,
    TResult Function(UserStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserState {
  const factory UserStateLoading() = _$UserStateLoading;
}

/// @nodoc
abstract class _$$UserStateUnauthorizedCopyWith<$Res> {
  factory _$$UserStateUnauthorizedCopyWith(_$UserStateUnauthorized value,
          $Res Function(_$UserStateUnauthorized) then) =
      __$$UserStateUnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateUnauthorizedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateUnauthorized>
    implements _$$UserStateUnauthorizedCopyWith<$Res> {
  __$$UserStateUnauthorizedCopyWithImpl(_$UserStateUnauthorized _value,
      $Res Function(_$UserStateUnauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateUnauthorized implements UserStateUnauthorized {
  const _$UserStateUnauthorized();

  @override
  String toString() {
    return 'UserState.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateUnauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function(List<String> permissions, String phone)
        authorized,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function(List<String> permissions, String phone)? authorized,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function(List<String> permissions, String phone)? authorized,
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
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateUnauthorized value) unAuthorized,
    required TResult Function(UserStateAuthorized value) authorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateUnauthorized value)? unAuthorized,
    TResult? Function(UserStateAuthorized value)? authorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateUnauthorized value)? unAuthorized,
    TResult Function(UserStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UserStateUnauthorized implements UserState {
  const factory UserStateUnauthorized() = _$UserStateUnauthorized;
}

/// @nodoc
abstract class _$$UserStateAuthorizedCopyWith<$Res> {
  factory _$$UserStateAuthorizedCopyWith(_$UserStateAuthorized value,
          $Res Function(_$UserStateAuthorized) then) =
      __$$UserStateAuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> permissions, String phone});
}

/// @nodoc
class __$$UserStateAuthorizedCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateAuthorized>
    implements _$$UserStateAuthorizedCopyWith<$Res> {
  __$$UserStateAuthorizedCopyWithImpl(
      _$UserStateAuthorized _value, $Res Function(_$UserStateAuthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissions = null,
    Object? phone = null,
  }) {
    return _then(_$UserStateAuthorized(
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateAuthorized implements UserStateAuthorized {
  const _$UserStateAuthorized(
      {required final List<String> permissions, required this.phone})
      : _permissions = permissions;

  final List<String> _permissions;
  @override
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  final String phone;

  @override
  String toString() {
    return 'UserState.authorized(permissions: $permissions, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateAuthorized &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_permissions), phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateAuthorizedCopyWith<_$UserStateAuthorized> get copyWith =>
      __$$UserStateAuthorizedCopyWithImpl<_$UserStateAuthorized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unAuthorized,
    required TResult Function(List<String> permissions, String phone)
        authorized,
  }) {
    return authorized(permissions, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unAuthorized,
    TResult? Function(List<String> permissions, String phone)? authorized,
  }) {
    return authorized?.call(permissions, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unAuthorized,
    TResult Function(List<String> permissions, String phone)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(permissions, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateUnauthorized value) unAuthorized,
    required TResult Function(UserStateAuthorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateUnauthorized value)? unAuthorized,
    TResult? Function(UserStateAuthorized value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateUnauthorized value)? unAuthorized,
    TResult Function(UserStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class UserStateAuthorized implements UserState {
  const factory UserStateAuthorized(
      {required final List<String> permissions,
      required final String phone}) = _$UserStateAuthorized;

  List<String> get permissions;
  String get phone;
  @JsonKey(ignore: true)
  _$$UserStateAuthorizedCopyWith<_$UserStateAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}
