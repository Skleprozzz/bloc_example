import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entries_response_dto.b.g.dart';

abstract class EntriesResponseDto
    implements Built<EntriesResponseDto, EntriesResponseDtoBuilder> {
  factory EntriesResponseDto([
    void Function(EntriesResponseDtoBuilder)? updates,
  ]) = _$EntriesResponseDto;
  EntriesResponseDto._();

  int get count;
  BuiltList<EntryDTO> get entries;

  static Serializer<EntriesResponseDto> get serializer =>
      _$entriesResponseDtoSerializer;
}

abstract class EntryDTO implements Built<EntryDTO, EntryDTOBuilder> {
  factory EntryDTO([void Function(EntryDTOBuilder)? updates]) = _$EntryDTO;
  EntryDTO._();

  @BuiltValueField(wireName: 'API')
  String get api;

  @BuiltValueField(wireName: 'Description')
  String get description;

  @BuiltValueField(wireName: 'Auth')
  String get auth;

  @BuiltValueField(wireName: 'HTTPS')
  bool get isHttps;

  @BuiltValueField(wireName: 'Cors')
  String get isCors;

  @BuiltValueField(wireName: 'Link')
  String get link;

  @BuiltValueField(wireName: 'Category')
  String get category;

  static Serializer<EntryDTO> get serializer => _$entryDTOSerializer;
}
