// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_with_tracks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistWithTracks _$PlaylistWithTracksFromJson(Map<String, dynamic> json) {
  return _PlaylistTracksResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaylistWithTracks {
  String get href => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<PlaylistTrack> get items => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistWithTracksCopyWith<PlaylistWithTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistWithTracksCopyWith<$Res> {
  factory $PlaylistWithTracksCopyWith(
          PlaylistWithTracks value, $Res Function(PlaylistWithTracks) then) =
      _$PlaylistWithTracksCopyWithImpl<$Res, PlaylistWithTracks>;
  @useResult
  $Res call(
      {String href,
      int total,
      List<PlaylistTrack> items,
      int limit,
      int offset,
      String? next,
      String? previous});
}

/// @nodoc
class _$PlaylistWithTracksCopyWithImpl<$Res, $Val extends PlaylistWithTracks>
    implements $PlaylistWithTracksCopyWith<$Res> {
  _$PlaylistWithTracksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
    Object? items = null,
    Object? limit = null,
    Object? offset = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlaylistTrack>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistTracksResponseCopyWith<$Res>
    implements $PlaylistWithTracksCopyWith<$Res> {
  factory _$$_PlaylistTracksResponseCopyWith(_$_PlaylistTracksResponse value,
          $Res Function(_$_PlaylistTracksResponse) then) =
      __$$_PlaylistTracksResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      int total,
      List<PlaylistTrack> items,
      int limit,
      int offset,
      String? next,
      String? previous});
}

/// @nodoc
class __$$_PlaylistTracksResponseCopyWithImpl<$Res>
    extends _$PlaylistWithTracksCopyWithImpl<$Res, _$_PlaylistTracksResponse>
    implements _$$_PlaylistTracksResponseCopyWith<$Res> {
  __$$_PlaylistTracksResponseCopyWithImpl(_$_PlaylistTracksResponse _value,
      $Res Function(_$_PlaylistTracksResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
    Object? items = null,
    Object? limit = null,
    Object? offset = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$_PlaylistTracksResponse(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlaylistTrack>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistTracksResponse implements _PlaylistTracksResponse {
  _$_PlaylistTracksResponse(
      {required this.href,
      required this.total,
      required final List<PlaylistTrack> items,
      this.limit = 50,
      this.offset = 0,
      this.next,
      this.previous})
      : _items = items;

  factory _$_PlaylistTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistTracksResponseFromJson(json);

  @override
  final String href;
  @override
  final int total;
  final List<PlaylistTrack> _items;
  @override
  List<PlaylistTrack> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  final String? next;
  @override
  final String? previous;

  @override
  String toString() {
    return 'PlaylistWithTracks(href: $href, total: $total, items: $items, limit: $limit, offset: $offset, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistTracksResponse &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      href,
      total,
      const DeepCollectionEquality().hash(_items),
      limit,
      offset,
      next,
      previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistTracksResponseCopyWith<_$_PlaylistTracksResponse> get copyWith =>
      __$$_PlaylistTracksResponseCopyWithImpl<_$_PlaylistTracksResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistTracksResponseToJson(
      this,
    );
  }
}

abstract class _PlaylistTracksResponse implements PlaylistWithTracks {
  factory _PlaylistTracksResponse(
      {required final String href,
      required final int total,
      required final List<PlaylistTrack> items,
      final int limit,
      final int offset,
      final String? next,
      final String? previous}) = _$_PlaylistTracksResponse;

  factory _PlaylistTracksResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaylistTracksResponse.fromJson;

  @override
  String get href;
  @override
  int get total;
  @override
  List<PlaylistTrack> get items;
  @override
  int get limit;
  @override
  int get offset;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistTracksResponseCopyWith<_$_PlaylistTracksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
