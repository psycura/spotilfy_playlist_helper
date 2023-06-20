// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_tracks_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSavedTrackDtoCollection on Isar {
  IsarCollection<SavedTrackDto> get savedTracks => this.collection();
}

const SavedTrackDtoSchema = CollectionSchema(
  name: r'SavedTrackDto',
  id: 1304251436810826195,
  properties: {
    r'addedAt': PropertySchema(
      id: 0,
      name: r'addedAt',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 1,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _savedTrackDtoEstimateSize,
  serialize: _savedTrackDtoSerialize,
  deserialize: _savedTrackDtoDeserialize,
  deserializeProp: _savedTrackDtoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'track': LinkSchema(
      id: 1242957044385611683,
      name: r'track',
      target: r'TrackDto',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _savedTrackDtoGetId,
  getLinks: _savedTrackDtoGetLinks,
  attach: _savedTrackDtoAttach,
  version: '3.1.0+1',
);

int _savedTrackDtoEstimateSize(
  SavedTrackDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedAt.length * 3;
  return bytesCount;
}

void _savedTrackDtoSerialize(
  SavedTrackDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedAt);
  writer.writeDateTime(offsets[1], object.updatedAt);
}

SavedTrackDto _savedTrackDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SavedTrackDto();
  object.addedAt = reader.readString(offsets[0]);
  object.id = id;
  object.updatedAt = reader.readDateTime(offsets[1]);
  return object;
}

P _savedTrackDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _savedTrackDtoGetId(SavedTrackDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _savedTrackDtoGetLinks(SavedTrackDto object) {
  return [object.track];
}

void _savedTrackDtoAttach(
    IsarCollection<dynamic> col, Id id, SavedTrackDto object) {
  object.id = id;
  object.track.attach(col, col.isar.collection<TrackDto>(), r'track', id);
}

extension SavedTrackDtoQueryWhereSort
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QWhere> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SavedTrackDtoQueryWhere
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QWhereClause> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterWhereClause> idBetween(
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

extension SavedTrackDtoQueryFilter
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QFilterCondition> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
      addedAtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedAt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
      addedAtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedAt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
      addedAtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
      addedAtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedAt',
        value: '',
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
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
}

extension SavedTrackDtoQueryObject
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QFilterCondition> {}

extension SavedTrackDtoQueryLinks
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QFilterCondition> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition> track(
      FilterQuery<TrackDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'track');
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterFilterCondition>
      trackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'track', 0, true, 0, true);
    });
  }
}

extension SavedTrackDtoQuerySortBy
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QSortBy> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> sortByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> sortByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension SavedTrackDtoQuerySortThenBy
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QSortThenBy> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> thenByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> thenByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension SavedTrackDtoQueryWhereDistinct
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QDistinct> {
  QueryBuilder<SavedTrackDto, SavedTrackDto, QDistinct> distinctByAddedAt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedAt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SavedTrackDto, SavedTrackDto, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension SavedTrackDtoQueryProperty
    on QueryBuilder<SavedTrackDto, SavedTrackDto, QQueryProperty> {
  QueryBuilder<SavedTrackDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SavedTrackDto, String, QQueryOperations> addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedAt');
    });
  }

  QueryBuilder<SavedTrackDto, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
