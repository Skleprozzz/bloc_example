// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginParamsDto> _$loginParamsDtoSerializer =
    new _$LoginParamsDtoSerializer();

class _$LoginParamsDtoSerializer
    implements StructuredSerializer<LoginParamsDto> {
  @override
  final Iterable<Type> types = const [LoginParamsDto, _$LoginParamsDto];
  @override
  final String wireName = 'LoginParamsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginParamsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginParamsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginParamsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginParamsDto extends LoginParamsDto {
  @override
  final String phone;
  @override
  final String password;

  factory _$LoginParamsDto([void Function(LoginParamsDtoBuilder)? updates]) =>
      (new LoginParamsDtoBuilder()..update(updates))._build();

  _$LoginParamsDto._({required this.phone, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(phone, r'LoginParamsDto', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        password, r'LoginParamsDto', 'password');
  }

  @override
  LoginParamsDto rebuild(void Function(LoginParamsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginParamsDtoBuilder toBuilder() =>
      new LoginParamsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginParamsDto &&
        phone == other.phone &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginParamsDto')
          ..add('phone', phone)
          ..add('password', password))
        .toString();
  }
}

class LoginParamsDtoBuilder
    implements Builder<LoginParamsDto, LoginParamsDtoBuilder> {
  _$LoginParamsDto? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginParamsDtoBuilder();

  LoginParamsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginParamsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginParamsDto;
  }

  @override
  void update(void Function(LoginParamsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginParamsDto build() => _build();

  _$LoginParamsDto _build() {
    final _$result = _$v ??
        new _$LoginParamsDto._(
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'LoginParamsDto', 'phone'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'LoginParamsDto', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
