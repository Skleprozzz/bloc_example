// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_response_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefreshResponseDto> _$refreshResponseDtoSerializer =
    new _$RefreshResponseDtoSerializer();

class _$RefreshResponseDtoSerializer
    implements StructuredSerializer<RefreshResponseDto> {
  @override
  final Iterable<Type> types = const [RefreshResponseDto, _$RefreshResponseDto];
  @override
  final String wireName = 'RefreshResponseDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RefreshResponseDto object,
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
  RefreshResponseDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefreshResponseDtoBuilder();

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

class _$RefreshResponseDto extends RefreshResponseDto {
  @override
  final String access;
  @override
  final String refresh;

  factory _$RefreshResponseDto(
          [void Function(RefreshResponseDtoBuilder)? updates]) =>
      (new RefreshResponseDtoBuilder()..update(updates))._build();

  _$RefreshResponseDto._({required this.access, required this.refresh})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        access, r'RefreshResponseDto', 'access');
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'RefreshResponseDto', 'refresh');
  }

  @override
  RefreshResponseDto rebuild(
          void Function(RefreshResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshResponseDtoBuilder toBuilder() =>
      new RefreshResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshResponseDto &&
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
    return (newBuiltValueToStringHelper(r'RefreshResponseDto')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class RefreshResponseDtoBuilder
    implements Builder<RefreshResponseDto, RefreshResponseDtoBuilder> {
  _$RefreshResponseDto? _$v;

  String? _access;
  String? get access => _$this._access;
  set access(String? access) => _$this._access = access;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  RefreshResponseDtoBuilder();

  RefreshResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access;
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshResponseDto;
  }

  @override
  void update(void Function(RefreshResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshResponseDto build() => _build();

  _$RefreshResponseDto _build() {
    final _$result = _$v ??
        new _$RefreshResponseDto._(
            access: BuiltValueNullFieldError.checkNotNull(
                access, r'RefreshResponseDto', 'access'),
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'RefreshResponseDto', 'refresh'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
