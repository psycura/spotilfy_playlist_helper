// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAlbumDtoCollection on Isar {
  IsarCollection<AlbumDto> get albums => this.collection();
}

const AlbumDtoSchema = CollectionSchema(
  name: r'AlbumDto',
  id: -5377044827045145729,
  properties: {
    r'albumType': PropertySchema(
      id: 0,
      name: r'albumType',
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
    r'releaseDate': PropertySchema(
      id: 4,
      name: r'releaseDate',
      type: IsarType.string,
    ),
    r'releaseDatePrecision': PropertySchema(
      id: 5,
      name: r'releaseDatePrecision',
      type: IsarType.string,
    ),
    r'spotifyId': PropertySchema(
      id: 6,
      name: r'spotifyId',
      type: IsarType.string,
    ),
    r'totalTracks': PropertySchema(
      id: 7,
      name: r'totalTracks',
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
  estimateSize: _albumDtoEstimateSize,
  serialize: _albumDtoSerialize,
  deserialize: _albumDtoDeserialize,
  deserializeProp: _albumDtoDeserializeProp,
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
    r'artists': LinkSchema(
      id: -4863569767532656629,
      name: r'artists',
      target: r'ArtistDto',
      single: false,
    ),
    r'tracks': LinkSchema(
      id: -817441834189331164,
      name: r'tracks',
      target: r'TrackDto',
      single: false,
      linkName: r'album',
    )
  },
  embeddedSchemas: {},
  getId: _albumDtoGetId,
  getLinks: _albumDtoGetLinks,
  attach: _albumDtoAttach,
  version: '3.1.0+1',
);

int _albumDtoEstimateSize(
  AlbumDto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.albumType.length * 3;
  bytesCount += 3 + object.href.length * 3;
  bytesCount += 3 + object.images.length * 3;
  {
    for (var i = 0; i < object.images.length; i++) {
      final value = object.images[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.releaseDate.length * 3;
  bytesCount += 3 + object.releaseDatePrecision.length * 3;
  bytesCount += 3 + object.spotifyId.length * 3;
  bytesCount += 3 + object.uri.length * 3;
  return bytesCount;
}

void _albumDtoSerialize(
  AlbumDto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.albumType);
  writer.writeString(offsets[1], object.href);
  writer.writeStringList(offsets[2], object.images);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.releaseDate);
  writer.writeString(offsets[5], object.releaseDatePrecision);
  writer.writeString(offsets[6], object.spotifyId);
  writer.writeLong(offsets[7], object.totalTracks);
  writer.writeDateTime(offsets[8], object.updatedAt);
  writer.writeString(offsets[9], object.uri);
}

AlbumDto _albumDtoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AlbumDto();
  object.albumType = reader.readString(offsets[0]);
  object.href = reader.readString(offsets[1]);
  object.images = reader.readStringList(offsets[2]) ?? [];
  object.name = reader.readString(offsets[3]);
  object.releaseDate = reader.readString(offsets[4]);
  object.releaseDatePrecision = reader.readString(offsets[5]);
  object.spotifyId = reader.readString(offsets[6]);
  object.totalTracks = reader.readLong(offsets[7]);
  object.updatedAt = reader.readDateTime(offsets[8]);
  object.uri = reader.readString(offsets[9]);
  return object;
}

P _albumDtoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
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

Id _albumDtoGetId(AlbumDto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _albumDtoGetLinks(AlbumDto object) {
  return [object.artists, object.tracks];
}

void _albumDtoAttach(IsarCollection<dynamic> col, Id id, AlbumDto object) {
  object.artists.attach(col, col.isar.collection<ArtistDto>(), r'artists', id);
  object.tracks.attach(col, col.isar.collection<TrackDto>(), r'tracks', id);
}

extension AlbumDtoByIndex on IsarCollection<AlbumDto> {
  Future<AlbumDto?> getBySpotifyId(String spotifyId) {
    return getByIndex(r'spotifyId', [spotifyId]);
  }

  AlbumDto? getBySpotifyIdSync(String spotifyId) {
    return getByIndexSync(r'spotifyId', [spotifyId]);
  }

  Future<bool> deleteBySpotifyId(String spotifyId) {
    return deleteByIndex(r'spotifyId', [spotifyId]);
  }

  bool deleteBySpotifyIdSync(String spotifyId) {
    return deleteByIndexSync(r'spotifyId', [spotifyId]);
  }

  Future<List<AlbumDto?>> getAllBySpotifyId(List<String> spotifyIdValues) {
    final values = spotifyIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'spotifyId', values);
  }

  List<AlbumDto?> getAllBySpotifyIdSync(List<String> spotifyIdValues) {
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

  Future<Id> putBySpotifyId(AlbumDto object) {
    return putByIndex(r'spotifyId', object);
  }

  Id putBySpotifyIdSync(AlbumDto object, {bool saveLinks = true}) {
    return putByIndexSync(r'spotifyId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllBySpotifyId(List<AlbumDto> objects) {
    return putAllByIndex(r'spotifyId', objects);
  }

  List<Id> putAllBySpotifyIdSync(List<AlbumDto> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'spotifyId', objects, saveLinks: saveLinks);
  }
}

extension AlbumDtoQueryWhereSort on QueryBuilder<AlbumDto, AlbumDto, QWhere> {
  QueryBuilder<AlbumDto, AlbumDto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AlbumDtoQueryWhere on QueryBuilder<AlbumDto, AlbumDto, QWhereClause> {
  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> idBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> spotifyIdEqualTo(
      String spotifyId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'spotifyId',
        value: [spotifyId],
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterWhereClause> spotifyIdNotEqualTo(
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

extension AlbumDtoQueryFilter
    on QueryBuilder<AlbumDto, AlbumDto, QFilterCondition> {
  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'albumType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'albumType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'albumType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'albumType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'albumType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'albumType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'albumType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> albumTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumType',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      albumTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'albumType',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefEqualTo(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefGreaterThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefStartsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefEndsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefContains(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefMatches(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'href',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> hrefIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'href',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesElementEqualTo(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesElementLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesElementBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesElementEndsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'images',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'images',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      imagesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      imagesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'images',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesLengthEqualTo(
      int length) {
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesIsEmpty() {
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesIsNotEmpty() {
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesLengthLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> imagesLengthBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameContains(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'releaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'releaseDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> releaseDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDatePrecision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'releaseDatePrecision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'releaseDatePrecision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'releaseDatePrecision',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'releaseDatePrecision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'releaseDatePrecision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'releaseDatePrecision',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'releaseDatePrecision',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDatePrecision',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      releaseDatePrecisionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'releaseDatePrecision',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdEqualTo(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdGreaterThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdStartsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdEndsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdContains(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdMatches(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> spotifyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spotifyId',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      spotifyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spotifyId',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> totalTracksEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTracks',
        value: value,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      totalTracksGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTracks',
        value: value,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> totalTracksLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTracks',
        value: value,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> totalTracksBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTracks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> updatedAtGreaterThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> updatedAtLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> updatedAtBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriEqualTo(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriGreaterThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriLessThan(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriStartsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriEndsWith(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriContains(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriMatches(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> uriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uri',
        value: '',
      ));
    });
  }
}

extension AlbumDtoQueryObject
    on QueryBuilder<AlbumDto, AlbumDto, QFilterCondition> {}

extension AlbumDtoQueryLinks
    on QueryBuilder<AlbumDto, AlbumDto, QFilterCondition> {
  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> artists(
      FilterQuery<ArtistDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'artists');
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> artistsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', length, true, length, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> artistsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', 0, true, 0, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> artistsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', 0, false, 999999, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> artistsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', 0, true, length, include);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      artistsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'artists', length, include, 999999, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> artistsLengthBetween(
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

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> tracks(
      FilterQuery<TrackDto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tracks');
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> tracksLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tracks', length, true, length, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> tracksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tracks', 0, true, 0, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> tracksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tracks', 0, false, 999999, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> tracksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tracks', 0, true, length, include);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition>
      tracksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tracks', length, include, 999999, true);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterFilterCondition> tracksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tracks', lower, includeLower, upper, includeUpper);
    });
  }
}

extension AlbumDtoQuerySortBy on QueryBuilder<AlbumDto, AlbumDto, QSortBy> {
  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByAlbumType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumType', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByAlbumTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumType', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByHref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByHrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByReleaseDatePrecision() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDatePrecision', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy>
      sortByReleaseDatePrecisionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDatePrecision', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortBySpotifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortBySpotifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByTotalTracks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTracks', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByTotalTracksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTracks', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> sortByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension AlbumDtoQuerySortThenBy
    on QueryBuilder<AlbumDto, AlbumDto, QSortThenBy> {
  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByAlbumType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumType', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByAlbumTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumType', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByHref() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByHrefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'href', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByReleaseDatePrecision() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDatePrecision', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy>
      thenByReleaseDatePrecisionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDatePrecision', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenBySpotifyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenBySpotifyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spotifyId', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByTotalTracks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTracks', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByTotalTracksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTracks', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QAfterSortBy> thenByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }
}

extension AlbumDtoQueryWhereDistinct
    on QueryBuilder<AlbumDto, AlbumDto, QDistinct> {
  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByAlbumType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'albumType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByHref(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'href', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'images');
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByReleaseDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'releaseDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByReleaseDatePrecision(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'releaseDatePrecision',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctBySpotifyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spotifyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByTotalTracks() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTracks');
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<AlbumDto, AlbumDto, QDistinct> distinctByUri(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uri', caseSensitive: caseSensitive);
    });
  }
}

extension AlbumDtoQueryProperty
    on QueryBuilder<AlbumDto, AlbumDto, QQueryProperty> {
  QueryBuilder<AlbumDto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations> albumTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'albumType');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations> hrefProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'href');
    });
  }

  QueryBuilder<AlbumDto, List<String>, QQueryOperations> imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations> releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'releaseDate');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations>
      releaseDatePrecisionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'releaseDatePrecision');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations> spotifyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spotifyId');
    });
  }

  QueryBuilder<AlbumDto, int, QQueryOperations> totalTracksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTracks');
    });
  }

  QueryBuilder<AlbumDto, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<AlbumDto, String, QQueryOperations> uriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uri');
    });
  }
}
