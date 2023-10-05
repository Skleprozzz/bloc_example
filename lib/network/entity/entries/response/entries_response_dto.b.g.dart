// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries_response_dto.b.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntriesResponseDto> _$entriesResponseDtoSerializer =
    new _$EntriesResponseDtoSerializer();
Serializer<EntryDTO> _$entryDTOSerializer = new _$EntryDTOSerializer();

class _$EntriesResponseDtoSerializer
    implements StructuredSerializer<EntriesResponseDto> {
  @override
  final Iterable<Type> types = const [EntriesResponseDto, _$EntriesResponseDto];
  @override
  final String wireName = 'EntriesResponseDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EntriesResponseDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'entries',
      serializers.serialize(object.entries,
          specifiedType:
              const FullType(BuiltList, const [const FullType(EntryDTO)])),
    ];

    return result;
  }

  @override
  EntriesResponseDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntriesResponseDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'entries':
          result.entries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EntryDTO)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$EntryDTOSerializer implements StructuredSerializer<EntryDTO> {
  @override
  final Iterable<Type> types = const [EntryDTO, _$EntryDTO];
  @override
  final String wireName = 'EntryDTO';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntryDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'API',
      serializers.serialize(object.api, specifiedType: const FullType(String)),
      'Description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'Auth',
      serializers.serialize(object.auth, specifiedType: const FullType(String)),
      'HTTPS',
      serializers.serialize(object.isHttps,
          specifiedType: const FullType(bool)),
      'Cors',
      serializers.serialize(object.isCors,
          specifiedType: const FullType(String)),
      'Link',
      serializers.serialize(object.link, specifiedType: const FullType(String)),
      'Category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EntryDTO deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntryDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'API':
          result.api = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Auth':
          result.auth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'HTTPS':
          result.isHttps = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'Cors':
          result.isCors = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EntriesResponseDto extends EntriesResponseDto {
  @override
  final int count;
  @override
  final BuiltList<EntryDTO> entries;

  factory _$EntriesResponseDto(
          [void Function(EntriesResponseDtoBuilder)? updates]) =>
      (new EntriesResponseDtoBuilder()..update(updates))._build();

  _$EntriesResponseDto._({required this.count, required this.entries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        count, r'EntriesResponseDto', 'count');
    BuiltValueNullFieldError.checkNotNull(
        entries, r'EntriesResponseDto', 'entries');
  }

  @override
  EntriesResponseDto rebuild(
          void Function(EntriesResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntriesResponseDtoBuilder toBuilder() =>
      new EntriesResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntriesResponseDto &&
        count == other.count &&
        entries == other.entries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntriesResponseDto')
          ..add('count', count)
          ..add('entries', entries))
        .toString();
  }
}

class EntriesResponseDtoBuilder
    implements Builder<EntriesResponseDto, EntriesResponseDtoBuilder> {
  _$EntriesResponseDto? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<EntryDTO>? _entries;
  ListBuilder<EntryDTO> get entries =>
      _$this._entries ??= new ListBuilder<EntryDTO>();
  set entries(ListBuilder<EntryDTO>? entries) => _$this._entries = entries;

  EntriesResponseDtoBuilder();

  EntriesResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _entries = $v.entries.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntriesResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntriesResponseDto;
  }

  @override
  void update(void Function(EntriesResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntriesResponseDto build() => _build();

  _$EntriesResponseDto _build() {
    _$EntriesResponseDto _$result;
    try {
      _$result = _$v ??
          new _$EntriesResponseDto._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'EntriesResponseDto', 'count'),
              entries: entries.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        entries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EntriesResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EntryDTO extends EntryDTO {
  @override
  final String api;
  @override
  final String description;
  @override
  final String auth;
  @override
  final bool isHttps;
  @override
  final String isCors;
  @override
  final String link;
  @override
  final String category;

  factory _$EntryDTO([void Function(EntryDTOBuilder)? updates]) =>
      (new EntryDTOBuilder()..update(updates))._build();

  _$EntryDTO._(
      {required this.api,
      required this.description,
      required this.auth,
      required this.isHttps,
      required this.isCors,
      required this.link,
      required this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(api, r'EntryDTO', 'api');
    BuiltValueNullFieldError.checkNotNull(
        description, r'EntryDTO', 'description');
    BuiltValueNullFieldError.checkNotNull(auth, r'EntryDTO', 'auth');
    BuiltValueNullFieldError.checkNotNull(isHttps, r'EntryDTO', 'isHttps');
    BuiltValueNullFieldError.checkNotNull(isCors, r'EntryDTO', 'isCors');
    BuiltValueNullFieldError.checkNotNull(link, r'EntryDTO', 'link');
    BuiltValueNullFieldError.checkNotNull(category, r'EntryDTO', 'category');
  }

  @override
  EntryDTO rebuild(void Function(EntryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntryDTOBuilder toBuilder() => new EntryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntryDTO &&
        api == other.api &&
        description == other.description &&
        auth == other.auth &&
        isHttps == other.isHttps &&
        isCors == other.isCors &&
        link == other.link &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, isHttps.hashCode);
    _$hash = $jc(_$hash, isCors.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntryDTO')
          ..add('api', api)
          ..add('description', description)
          ..add('auth', auth)
          ..add('isHttps', isHttps)
          ..add('isCors', isCors)
          ..add('link', link)
          ..add('category', category))
        .toString();
  }
}

class EntryDTOBuilder implements Builder<EntryDTO, EntryDTOBuilder> {
  _$EntryDTO? _$v;

  String? _api;
  String? get api => _$this._api;
  set api(String? api) => _$this._api = api;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  bool? _isHttps;
  bool? get isHttps => _$this._isHttps;
  set isHttps(bool? isHttps) => _$this._isHttps = isHttps;

  String? _isCors;
  String? get isCors => _$this._isCors;
  set isCors(String? isCors) => _$this._isCors = isCors;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  EntryDTOBuilder();

  EntryDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _api = $v.api;
      _description = $v.description;
      _auth = $v.auth;
      _isHttps = $v.isHttps;
      _isCors = $v.isCors;
      _link = $v.link;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntryDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntryDTO;
  }

  @override
  void update(void Function(EntryDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntryDTO build() => _build();

  _$EntryDTO _build() {
    final _$result = _$v ??
        new _$EntryDTO._(
            api: BuiltValueNullFieldError.checkNotNull(api, r'EntryDTO', 'api'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'EntryDTO', 'description'),
            auth: BuiltValueNullFieldError.checkNotNull(
                auth, r'EntryDTO', 'auth'),
            isHttps: BuiltValueNullFieldError.checkNotNull(
                isHttps, r'EntryDTO', 'isHttps'),
            isCors: BuiltValueNullFieldError.checkNotNull(
                isCors, r'EntryDTO', 'isCors'),
            link: BuiltValueNullFieldError.checkNotNull(
                link, r'EntryDTO', 'link'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'EntryDTO', 'category'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
