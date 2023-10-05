// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponseDto> _$loginResponseDtoSerializer =
    new _$LoginResponseDtoSerializer();

class _$LoginResponseDtoSerializer
    implements StructuredSerializer<LoginResponseDto> {
  @override
  final Iterable<Type> types = const [LoginResponseDto, _$LoginResponseDto];
  @override
  final String wireName = 'LoginResponseDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginResponseDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'access',
      serializers.serialize(object.access,
          specifiedType: const FullType(String)),
      'refresh',
      serializers.serialize(object.refresh,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginResponseDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'access':
          result.access = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'refresh':
          result.refresh = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponseDto extends LoginResponseDto {
  @override
  final String access;
  @override
  final String refresh;

  factory _$LoginResponseDto(
          [void Function(LoginResponseDtoBuilder)? updates]) =>
      (new LoginResponseDtoBuilder()..update(updates))._build();

  _$LoginResponseDto._({required this.access, required this.refresh})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        access, r'LoginResponseDto', 'access');
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'LoginResponseDto', 'refresh');
  }

  @override
  LoginResponseDto rebuild(void Function(LoginResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseDtoBuilder toBuilder() =>
      new LoginResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponseDto &&
        access == other.access &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponseDto')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class LoginResponseDtoBuilder
    implements Builder<LoginResponseDto, LoginResponseDtoBuilder> {
  _$LoginResponseDto? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  LoginResponseDtoBuilder();

  LoginResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginResponseDto;
  }

  @override
  void update(void Function(LoginResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponseDto build() => _build();

  _$LoginResponseDto _build() {
    final _$result = _$v ??
        new _$LoginResponseDto._(
            access: BuiltValueNullFieldError.checkNotNull(
                access, r'LoginResponseDto', 'access'),
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'LoginResponseDto', 'refresh'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
