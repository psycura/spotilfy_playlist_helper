// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracks_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTrackDtoCollection on Isar {
  IsarCollection<TrackDto> get tracks => this.collection();
}

const TrackDtoSchema = CollectionSchema(
  name: r'TrackDto',
  id: 7496476966208125376,
  properties: {
    r'durationMs': PropertySchema(
      id: 0,
      name: r'durationMs',
      type: IsarType.long,
    ),
    r'href': PropertySchema(
      id: 1,
      name: r'href',
      type: IsarType.string,
    ),
    r'isPlayable': PropertySchema(
      id: 2,
      name: r'isPlayable',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'popularity': PropertySchema(
      id: 4,
      name: r'popularity',
      type: IsarType.long,
    ),
    r'previewUrl': PropertySchema(
      id: 5,
      name: r'previewUrl',
      type: IsarType.string,
    ),
    r'spotifyId': PropertySchema(
      id: 6,
      name: r'spotifyId',
      type: IsarType.string,
    ),
    r'trackNumber': PropertySchema(
      id: 7,
      name: r'trackNumber',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 8,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uri': PropertySchema(
      id: 9,
      name: r'uri',
      type: IsarType.string,
    )
  },
  estimateSize: _trackDtoEstimateSize,
  serialize: _trackDtoSerialize,
  deserialize: _trackDtoDeserialize,
  deserializeProp: _trackDtoDeserializeProp,
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
  links: {
    r'album': LinkSchema(
      id: 4576605549654805199,
      name: r'album',
      target: r'AlbumDto',
      single: true,
    ),
    r'artists': LinkSchema(
      id: -2345360836716606784,
      name: r'artists',
      target: r'ArtistDto',
      single: false,
    ),
    r'playlists': LinkSchema(
      id: -1413580651845127372,
      name: r'playlists',
      target: r'PlaylistTrackDto',
      single: false,
      linkName: r'track',
    ),
    r'saved': LinkSchema(
      id: 6208866825068967004,
      name: r'saved',
      target: r'SavedTrackDto',
      single: false,
      linkName: r'track',
    )
  },
  embeddedSchemas: {},
  getId: _trackDtoGetId,
  getLinks: _trackDtoGetLinks,
  attach: _trackDtoAttach,
  version: '3.1.0+1',
);

int _trackDtoEstimateSize(
  TrackDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.href.length * 3;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.previewUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.spotifyId.length * 3;
  bytesCount += 3 + object.uri.length * 3;
  return bytesCount;
}

void _trackDtoSerialize(
  TrackDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.durationMs);
  writer.writeString(offsets[1], object.href);
  writer.writeBool(offsets[2], object.isPlayable);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.popularity);
  writer.writeString(offsets[5], object.previewUrl);
  writer.writeString(offsets[6], object.spotifyId);
  writer.writeLong(offsets[7], object.trackNumber);
  writer.writeDateTime(offsets[8], object.updatedAt);
  writer.writeString(offsets[9], object.uri);
}

TrackDto _trackDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TrackDto();
  object.durationMs = reader.readLong(offsets[0]);
  object.href = reader.readString(offsets[1]);
  object.isPlayable = reader.readBoolOrNull(offsets[2]);
  object.name = reader.readString(offsets[3]);
  object.popularity = reader.readLong(offsets[4]);
  object.previewUrl = reader.readStringOrNull(offsets[5]);
  object.spotifyId = reader.readString(offsets[6]);
  object.trackNumber = reader.readLong(offsets[7]);
  object.updatedAt = reader.readDateTime(offsets[8]);
  object.uri = reader.readString(offsets[9]);
  return object;
}

P _trackDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _trackDtoGetId(TrackDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _trackDtoGetLinks(TrackDto object) {
  return [object.album, object.artists, object.playlists, object.saved];
}

void _trackDtoAttach(IsarCollection<dynamic> col, Id id, TrackDto object) {
  object.album.attach(col, col.isar.collection<AlbumDto>(), r'album', id);
  object.artists.attach(col, col.isar.collection<ArtistDto>(), r'artists', id);
  object.playlists
      .attach(col, col.isar.collection<PlaylistTrackDto>(), r'playlists', id);
  object.saved.attach(col, col.isar.collection<SavedTrackDto>(), r'saved', id);
}

extension TrackDtoByIndex on IsarCollection<TrackDto> {
  Future<TrackDto?> getBySpotifyId(String spotifyId) {
    return getByIndex(r'spotifyId', [spotifyId]);
  }

  TrackDto? getBySpotifyIdSync(String spotifyId) {
    return getByIndexSync(r'spotifyId', [spotifyId]);
  }

  Future<bool> deleteBySpotifyId(String spotifyId) {
    return deleteByIndex(r'spotifyId', [spotifyId]);
  }

  bool deleteBySpotifyIdSync(String spotifyId) {
    return deleteByIndexSync(r'spotifyId', [spotifyId]);
  }

  Future<List<TrackDto?>> getAllBySpotifyId(List<String> spotifyIdValues) {
    final values = spotifyIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'spotifyId', values);
  }

  List<TrackDto?> getAllBySpotifyIdSync(List<String> spotifyIdValues) {
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

  Future<Id> putBySpotifyId(TrackDto object) {
    return putByIndex(r'spotifyId', object);
  }

  Id putBySpotifyIdSync(TrackDto object, {bool saveLinks = true}) {
    return putByIndexSync(r'spotifyId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySpotifyId(List<TrackDto> objects) {
    return putAllByIndex(r'spotifyId', objects);
  }

  List<Id> putAllBySpotifyIdSync(List<TrackDto> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'spotifyId', objects, saveLinks: saveLinks);
  }
}

extension TrackDtoQueryWhereSort on QueryBuilder<TrackDto, TrackDto, QWhere> {
  QueryBuilder<TrackDto, TrackDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TrackDtoQueryWhere on QueryBuilder<TrackDto, TrackDto, QWhereClause> {
  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> idBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> spotifyIdEqualTo(
      String spotifyId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'spotifyId',
        value: [spotifyId],
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterWhereClause> spotifyIdNotEqualTo(
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

extension TrackDtoQueryFilter
    on QueryBuilder<TrackDto, TrackDto, QFilterCondition> {
  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> durationMsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationMs',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> durationMsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationMs',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> durationMsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationMs',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> durationMsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationMs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefEqualTo(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefGreaterThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefLessThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefStartsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefEndsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefContains(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefMatches(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'href',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> hrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'href',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> isPlayableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isPlayable',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      isPlayableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isPlayable',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> isPlayableEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPlayable',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameContains(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> popularityEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'popularity',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> popularityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'popularity',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> popularityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'popularity',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> popularityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'popularity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'previewUrl',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      previewUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'previewUrl',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'previewUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'previewUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> previewUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      previewUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdEqualTo(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdGreaterThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdLessThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdStartsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdEndsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spotifyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spotifyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> spotifyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spotifyId',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      spotifyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spotifyId',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> trackNumberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trackNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      trackNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trackNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> trackNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trackNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> trackNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trackNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> updatedAtBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriEqualTo(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriGreaterThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriLessThan(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriBetween(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriStartsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriEndsWith(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriContains(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriMatches(
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

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> uriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uri',
        value: '',
      ));
    });
  }
}

extension TrackDtoQueryObject
    on QueryBuilder<TrackDto, TrackDto, QFilterCondition> {}

extension TrackDtoQueryLinks
    on QueryBuilder<TrackDto, TrackDto, QFilterCondition> {
  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> album(
      FilterQuery<AlbumDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'album');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> albumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'album', 0, true, 0, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> artists(
      FilterQuery<ArtistDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'artists');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> artistsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', length, true, length, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> artistsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', 0, true, 0, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> artistsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', 0, false, 999999, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> artistsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', 0, true, length, include);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      artistsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', length, include, 999999, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> artistsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'artists', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> playlists(
      FilterQuery<PlaylistTrackDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'playlists');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      playlistsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlists', length, true, length, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> playlistsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlists', 0, true, 0, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      playlistsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlists', 0, false, 999999, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      playlistsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlists', 0, true, length, include);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      playlistsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlists', length, include, 999999, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      playlistsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'playlists', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> saved(
      FilterQuery<SavedTrackDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'saved');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> savedLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'saved', length, true, length, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> savedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'saved', 0, true, 0, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> savedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'saved', 0, false, 999999, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> savedLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'saved', 0, true, length, include);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition>
      savedLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'saved', length, include, 999999, true);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterFilterCondition> savedLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'saved', lower, includeLower, upper, includeUpper);
    });
  }
}

extension TrackDtoQuerySortBy on QueryBuilder<TrackDto, TrackDto, QSortBy> {
  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByDurationMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMs', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByDurationMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMs', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByHref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByHrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByIsPlayable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPlayable', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByIsPlayableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPlayable', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortBySpotifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortBySpotifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByTrackNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trackNumber', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByTrackNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trackNumber', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> sortByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension TrackDtoQuerySortThenBy
    on QueryBuilder<TrackDto, TrackDto, QSortThenBy> {
  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByDurationMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMs', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByDurationMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationMs', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByHref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByHrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByIsPlayable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPlayable', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByIsPlayableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPlayable', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByPopularityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'popularity', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenBySpotifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenBySpotifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByTrackNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trackNumber', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByTrackNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trackNumber', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QAfterSortBy> thenByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension TrackDtoQueryWhereDistinct
    on QueryBuilder<TrackDto, TrackDto, QDistinct> {
  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByDurationMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationMs');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByHref(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'href', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByIsPlayable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPlayable');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByPopularity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'popularity');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByPreviewUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'previewUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctBySpotifyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spotifyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByTrackNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trackNumber');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<TrackDto, TrackDto, QDistinct> distinctByUri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uri', caseSensitive: caseSensitive);
    });
  }
}

extension TrackDtoQueryProperty
    on QueryBuilder<TrackDto, TrackDto, QQueryProperty> {
  QueryBuilder<TrackDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TrackDto, int, QQueryOperations> durationMsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationMs');
    });
  }

  QueryBuilder<TrackDto, String, QQueryOperations> hrefProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'href');
    });
  }

  QueryBuilder<TrackDto, bool?, QQueryOperations> isPlayableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPlayable');
    });
  }

  QueryBuilder<TrackDto, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TrackDto, int, QQueryOperations> popularityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'popularity');
    });
  }

  QueryBuilder<TrackDto, String?, QQueryOperations> previewUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'previewUrl');
    });
  }

  QueryBuilder<TrackDto, String, QQueryOperations> spotifyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spotifyId');
    });
  }

  QueryBuilder<TrackDto, int, QQueryOperations> trackNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trackNumber');
    });
  }

  QueryBuilder<TrackDto, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<TrackDto, String, QQueryOperations> uriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uri');
    });
  }
}
