// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tokens.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserTokens {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTokensCopyWith<UserTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokensCopyWith<$Res> {
  factory $UserTokensCopyWith(
          UserTokens value, $Res Function(UserTokens) then) =
      _$UserTokensCopyWithImpl<$Res, UserTokens>;
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class _$UserTokensCopyWithImpl<$Res, $Val extends UserTokens>
    implements $UserTokensCopyWith<$Res> {
  _$UserTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserTokensCopyWith<$Res>
    implements $UserTokensCopyWith<$Res> {
  factory _$$_UserTokensCopyWith(
          _$_UserTokens value, $Res Function(_$_UserTokens) then) =
      __$$_UserTokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class __$$_UserTokensCopyWithImpl<$Res>
    extends _$UserTokensCopyWithImpl<$Res, _$_UserTokens>
    implements _$$_UserTokensCopyWith<$Res> {
  __$$_UserTokensCopyWithImpl(
      _$_UserTokens _value, $Res Function(_$_UserTokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$_UserTokens(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserTokens implements _UserTokens {
  const _$_UserTokens({required this.access, required this.refresh});

  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'UserTokens(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserTokens &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserTokensCopyWith<_$_UserTokens> get copyWith =>
      __$$_UserTokensCopyWithImpl<_$_UserTokens>(this, _$identity);
}

abstract class _UserTokens implements UserTokens {
  const factory _UserTokens(
      {required final String access,
      required final String refresh}) = _$_UserTokens;

  @override
  String get access;
  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_UserTokensCopyWith<_$_UserTokens> get copyWith =>
      throw _privateConstructorUsedError;
}
