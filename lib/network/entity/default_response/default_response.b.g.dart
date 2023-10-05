// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DefaultResponse> _$defaultResponseSerializer =
    new _$DefaultResponseSerializer();

class _$DefaultResponseSerializer
    implements StructuredSerializer<DefaultResponse> {
  @override
  final Iterable<Type> types = const [DefaultResponse, _$DefaultResponse];
  @override
  final String wireName = 'DefaultResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, DefaultResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DefaultResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DefaultResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DefaultResponse extends DefaultResponse {
  @override
  final int code;
  @override
  final String message;

  factory _$DefaultResponse([void Function(DefaultResponseBuilder)? updates]) =>
      (new DefaultResponseBuilder()..update(updates))._build();

  _$DefaultResponse._({required this.code, required this.message}) : super._() {
    BuiltValueNullFieldError.checkNotNull(code, r'DefaultResponse', 'code');
    BuiltValueNullFieldError.checkNotNull(
        message, r'DefaultResponse', 'message');
  }

  @override
  DefaultResponse rebuild(void Function(DefaultResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultResponseBuilder toBuilder() =>
      new DefaultResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultResponse &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultResponse')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class DefaultResponseBuilder
    implements Builder<DefaultResponse, DefaultResponseBuilder> {
  _$DefaultResponse? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DefaultResponseBuilder();

  DefaultResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefaultResponse;
  }

  @override
  void update(void Function(DefaultResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultResponse build() => _build();

  _$DefaultResponse _build() {
    final _$result = _$v ??
        new _$DefaultResponse._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'DefaultResponse', 'code'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'DefaultResponse', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
