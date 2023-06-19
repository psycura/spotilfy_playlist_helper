// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_tracks_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaylistTrackDtoCollection on Isar {
  IsarCollection<PlaylistTrackDto> get playlistTracks => this.collection();
}

const PlaylistTrackDtoSchema = CollectionSchema(
  name: r'PlaylistTrackDto',
  id: 8317165829630568403,
  properties: {
    r'addedAt': PropertySchema(
      id: 0,
      name: r'addedAt',
      type: IsarType.string,
    )
  },
  estimateSize: _playlistTrackDtoEstimateSize,
  serialize: _playlistTrackDtoSerialize,
  deserialize: _playlistTrackDtoDeserialize,
  deserializeProp: _playlistTrackDtoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'track': LinkSchema(
      id: -2769922297321614566,
      name: r'track',
      target: r'TrackDto',
      single: true,
    ),
    r'playlist': LinkSchema(
      id: 6784583829589952057,
      name: r'playlist',
      target: r'PlaylistDto',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _playlistTrackDtoGetId,
  getLinks: _playlistTrackDtoGetLinks,
  attach: _playlistTrackDtoAttach,
  version: '3.1.0+1',
);

int _playlistTrackDtoEstimateSize(
  PlaylistTrackDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedAt.length * 3;
  return bytesCount;
}

void _playlistTrackDtoSerialize(
  PlaylistTrackDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedAt);
}

PlaylistTrackDto _playlistTrackDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaylistTrackDto();
  object.addedAt = reader.readString(offsets[0]);
  object.id = id;
  return object;
}

P _playlistTrackDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _playlistTrackDtoGetId(PlaylistTrackDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playlistTrackDtoGetLinks(PlaylistTrackDto object) {
  return [object.track, object.playlist];
}

void _playlistTrackDtoAttach(
    IsarCollection<dynamic> col, Id id, PlaylistTrackDto object) {
  object.id = id;
  object.track.attach(col, col.isar.collection<TrackDto>(), r'track', id);
  object.playlist
      .attach(col, col.isar.collection<PlaylistDto>(), r'playlist', id);
}

extension PlaylistTrackDtoQueryWhereSort
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QWhere> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlaylistTrackDtoQueryWhere
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QWhereClause> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterWhereClause> idBetween(
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
}

extension PlaylistTrackDtoQueryFilter
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QFilterCondition> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      addedAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      idBetween(
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
}

extension PlaylistTrackDtoQueryObject
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QFilterCondition> {}

extension PlaylistTrackDtoQueryLinks
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QFilterCondition> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition> track(
      FilterQuery<TrackDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'track');
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      trackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'track', 0, true, 0, true);
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      playlist(FilterQuery<PlaylistDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'playlist');
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterFilterCondition>
      playlistIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playlist', 0, true, 0, true);
    });
  }
}

extension PlaylistTrackDtoQuerySortBy
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QSortBy> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterSortBy>
      sortByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterSortBy>
      sortByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }
}

extension PlaylistTrackDtoQuerySortThenBy
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QSortThenBy> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterSortBy>
      thenByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterSortBy>
      thenByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension PlaylistTrackDtoQueryWhereDistinct
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QDistinct> {
  QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QDistinct> distinctByAddedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedAt', caseSensitive: caseSensitive);
    });
  }
}

extension PlaylistTrackDtoQueryProperty
    on QueryBuilder<PlaylistTrackDto, PlaylistTrackDto, QQueryProperty> {
  QueryBuilder<PlaylistTrackDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlaylistTrackDto, String, QQueryOperations> addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedAt');
    });
  }
}
