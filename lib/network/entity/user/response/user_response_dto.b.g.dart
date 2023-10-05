// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserResponseDto> _$userResponseDtoSerializer =
    new _$UserResponseDtoSerializer();

class _$UserResponseDtoSerializer
    implements StructuredSerializer<UserResponseDto> {
  @override
  final Iterable<Type> types = const [UserResponseDto, _$UserResponseDto];
  @override
  final String wireName = 'UserResponseDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserResponseDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  UserResponseDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserResponseDtoBuilder();

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
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$UserResponseDto extends UserResponseDto {
  @override
  final String phone;
  @override
  final BuiltList<String> permissions;

  factory _$UserResponseDto([void Function(UserResponseDtoBuilder)? updates]) =>
      (new UserResponseDtoBuilder()..update(updates))._build();

  _$UserResponseDto._({required this.phone, required this.permissions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(phone, r'UserResponseDto', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'UserResponseDto', 'permissions');
  }

  @override
  UserResponseDto rebuild(void Function(UserResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseDtoBuilder toBuilder() =>
      new UserResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponseDto &&
        phone == other.phone &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResponseDto')
          ..add('phone', phone)
          ..add('permissions', permissions))
        .toString();
  }
}

class UserResponseDtoBuilder
    implements Builder<UserResponseDto, UserResponseDtoBuilder> {
  _$UserResponseDto? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= new ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  UserResponseDtoBuilder();

  UserResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResponseDto;
  }

  @override
  void update(void Function(UserResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponseDto build() => _build();

  _$UserResponseDto _build() {
    _$UserResponseDto _$result;
    try {
      _$result = _$v ??
          new _$UserResponseDto._(
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, r'UserResponseDto', 'phone'),
              permissions: permissions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
