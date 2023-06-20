// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaylistDtoCollection on Isar {
  IsarCollection<PlaylistDto> get playlists => this.collection();
}

const PlaylistDtoSchema = CollectionSchema(
  name: r'PlaylistDto',
  id: 8095573689669046706,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'href': PropertySchema(
      id: 1,
      name: r'href',
      type: IsarType.string,
    ),
    r'images': PropertySchema(
      id: 2,
      name: r'images',
      type: IsarType.stringList,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'spotifyId': PropertySchema(
      id: 4,
      name: r'spotifyId',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 5,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uri': PropertySchema(
      id: 6,
      name: r'uri',
      type: IsarType.string,
    )
  },
  estimateSize: _playlistDtoEstimateSize,
  serialize: _playlistDtoSerialize,
  deserialize: _playlistDtoDeserialize,
  deserializeProp: _playlistDtoDeserializeProp,
  idName: r'id',
  indexes: {
    r'spotifyId': IndexSchema(
      id: 7104577019864935629,
      name: r'spotifyId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'spotifyId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _playlistDtoGetId,
  getLinks: _playlistDtoGetLinks,
  attach: _playlistDtoAttach,
  version: '3.1.0+1',
);

int _playlistDtoEstimateSize(
  PlaylistDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.href.length * 3;
  bytesCount += 3 + object.images.length * 3;
  {
    for (var i = 0; i < object.images.length; i++) {
      final value = object.images[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.spotifyId.length * 3;
  bytesCount += 3 + object.uri.length * 3;
  return bytesCount;
}

void _playlistDtoSerialize(
  PlaylistDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeString(offsets[1], object.href);
  writer.writeStringList(offsets[2], object.images);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.spotifyId);
  writer.writeDateTime(offsets[5], object.updatedAt);
  writer.writeString(offsets[6], object.uri);
}

PlaylistDto _playlistDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaylistDto();
  object.description = reader.readStringOrNull(offsets[0]);
  object.href = reader.readString(offsets[1]);
  object.images = reader.readStringList(offsets[2]) ?? [];
  object.name = reader.readString(offsets[3]);
  object.spotifyId = reader.readString(offsets[4]);
  object.updatedAt = reader.readDateTime(offsets[5]);
  object.uri = reader.readString(offsets[6]);
  return object;
}

P _playlistDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _playlistDtoGetId(PlaylistDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playlistDtoGetLinks(PlaylistDto object) {
  return [];
}

void _playlistDtoAttach(
    IsarCollection<dynamic> col, Id id, PlaylistDto object) {}

extension PlaylistDtoByIndex on IsarCollection<PlaylistDto> {
  Future<PlaylistDto?> getBySpotifyId(String spotifyId) {
    return getByIndex(r'spotifyId', [spotifyId]);
  }

  PlaylistDto? getBySpotifyIdSync(String spotifyId) {
    return getByIndexSync(r'spotifyId', [spotifyId]);
  }

  Future<bool> deleteBySpotifyId(String spotifyId) {
    return deleteByIndex(r'spotifyId', [spotifyId]);
  }

  bool deleteBySpotifyIdSync(String spotifyId) {
    return deleteByIndexSync(r'spotifyId', [spotifyId]);
  }

  Future<List<PlaylistDto?>> getAllBySpotifyId(List<String> spotifyIdValues) {
    final values = spotifyIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'spotifyId', values);
  }

  List<PlaylistDto?> getAllBySpotifyIdSync(List<String> spotifyIdValues) {
    final values = spotifyIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'spotifyId', values);
  }

  Future<int> deleteAllBySpotifyId(List<String> spotifyIdValues) {
    final values = spotifyIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'spotifyId', values);
  }

  int deleteAllBySpotifyIdSync(List<String> spotifyIdValues) {
    final values = spotifyIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'spotifyId', values);
  }

  Future<Id> putBySpotifyId(PlaylistDto object) {
    return putByIndex(r'spotifyId', object);
  }

  Id putBySpotifyIdSync(PlaylistDto object, {bool saveLinks = true}) {
    return putByIndexSync(r'spotifyId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySpotifyId(List<PlaylistDto> objects) {
    return putAllByIndex(r'spotifyId', objects);
  }

  List<Id> putAllBySpotifyIdSync(List<PlaylistDto> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'spotifyId', objects, saveLinks: saveLinks);
  }
}

extension PlaylistDtoQueryWhereSort
    on QueryBuilder<PlaylistDto, PlaylistDto, QWhere> {
  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlaylistDtoQueryWhere
    on QueryBuilder<PlaylistDto, PlaylistDto, QWhereClause> {
  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> spotifyIdEqualTo(
      String spotifyId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'spotifyId',
        value: [spotifyId],
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterWhereClause> spotifyIdNotEqualTo(
      String spotifyId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'spotifyId',
              lower: [],
              upper: [spotifyId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'spotifyId',
              lower: [spotifyId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'spotifyId',
              lower: [spotifyId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'spotifyId',
              lower: [],
              upper: [spotifyId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PlaylistDtoQueryFilter
    on QueryBuilder<PlaylistDto, PlaylistDto, QFilterCondition> {
  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'href',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'href',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'href',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'href',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'href',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'href',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'href',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'href',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> hrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'href',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      hrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'href',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'images',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'images',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      imagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spotifyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spotifyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spotifyId',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      spotifyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spotifyId',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uri',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uri',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition> uriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterFilterCondition>
      uriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uri',
        value: '',
      ));
    });
  }
}

extension PlaylistDtoQueryObject
    on QueryBuilder<PlaylistDto, PlaylistDto, QFilterCondition> {}

extension PlaylistDtoQueryLinks
    on QueryBuilder<PlaylistDto, PlaylistDto, QFilterCondition> {}

extension PlaylistDtoQuerySortBy
    on QueryBuilder<PlaylistDto, PlaylistDto, QSortBy> {
  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByHref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByHrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortBySpotifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortBySpotifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> sortByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension PlaylistDtoQuerySortThenBy
    on QueryBuilder<PlaylistDto, PlaylistDto, QSortThenBy> {
  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByHref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByHrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenBySpotifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenBySpotifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QAfterSortBy> thenByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension PlaylistDtoQueryWhereDistinct
    on QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> {
  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctByHref(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'href', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctByImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'images');
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctBySpotifyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spotifyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<PlaylistDto, PlaylistDto, QDistinct> distinctByUri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uri', caseSensitive: caseSensitive);
    });
  }
}

extension PlaylistDtoQueryProperty
    on QueryBuilder<PlaylistDto, PlaylistDto, QQueryProperty> {
  QueryBuilder<PlaylistDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlaylistDto, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<PlaylistDto, String, QQueryOperations> hrefProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'href');
    });
  }

  QueryBuilder<PlaylistDto, List<String>, QQueryOperations> imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<PlaylistDto, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PlaylistDto, String, QQueryOperations> spotifyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spotifyId');
    });
  }

  QueryBuilder<PlaylistDto, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<PlaylistDto, String, QQueryOperations> uriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uri');
    });
  }
}
