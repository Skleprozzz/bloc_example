// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_params_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefreshParamsDto> _$refreshParamsDtoSerializer =
    new _$RefreshParamsDtoSerializer();

class _$RefreshParamsDtoSerializer
    implements StructuredSerializer<RefreshParamsDto> {
  @override
  final Iterable<Type> types = const [RefreshParamsDto, _$RefreshParamsDto];
  @override
  final String wireName = 'RefreshParamsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, RefreshParamsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refresh',
      serializers.serialize(object.refresh,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RefreshParamsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefreshParamsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refresh':
          result.refresh = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RefreshParamsDto extends RefreshParamsDto {
  @override
  final String refresh;

  factory _$RefreshParamsDto(
          [void Function(RefreshParamsDtoBuilder)? updates]) =>
      (new RefreshParamsDtoBuilder()..update(updates))._build();

  _$RefreshParamsDto._({required this.refresh}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refresh, r'RefreshParamsDto', 'refresh');
  }

  @override
  RefreshParamsDto rebuild(void Function(RefreshParamsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshParamsDtoBuilder toBuilder() =>
      new RefreshParamsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshParamsDto && refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshParamsDto')
          ..add('refresh', refresh))
        .toString();
  }
}

class RefreshParamsDtoBuilder
    implements Builder<RefreshParamsDto, RefreshParamsDtoBuilder> {
  _$RefreshParamsDto? _$v;

  String? _refresh;
  String? get refresh => _$this._refresh;
  set refresh(String? refresh) => _$this._refresh = refresh;

  RefreshParamsDtoBuilder();

  RefreshParamsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh = $v.refresh;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshParamsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshParamsDto;
  }

  @override
  void update(void Function(RefreshParamsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshParamsDto build() => _build();

  _$RefreshParamsDto _build() {
    final _$result = _$v ??
        new _$RefreshParamsDto._(
            refresh: BuiltValueNullFieldError.checkNotNull(
                refresh, r'RefreshParamsDto', 'refresh'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
