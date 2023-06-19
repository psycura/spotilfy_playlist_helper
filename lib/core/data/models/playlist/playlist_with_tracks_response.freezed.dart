// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_with_tracks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistWithTracksResponse _$PlaylistWithTracksResponseFromJson(
    Map<String, dynamic> json) {
  return _PlaylistWithTracksResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaylistWithTracksResponse {
  String get href => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<TrackWithMetaResponse> get items => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistWithTracksResponseCopyWith<PlaylistWithTracksResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistWithTracksResponseCopyWith<$Res> {
  factory $PlaylistWithTracksResponseCopyWith(PlaylistWithTracksResponse value,
          $Res Function(PlaylistWithTracksResponse) then) =
      _$PlaylistWithTracksResponseCopyWithImpl<$Res,
          PlaylistWithTracksResponse>;
  @useResult
  $Res call(
      {String href,
      int total,
      List<TrackWithMetaResponse> items,
      int limit,
      int offset,
      String? next,
      String? previous});
}

/// @nodoc
class _$PlaylistWithTracksResponseCopyWithImpl<$Res,
        $Val extends PlaylistWithTracksResponse>
    implements $PlaylistWithTracksResponseCopyWith<$Res> {
  _$PlaylistWithTracksResponseCopyWithImpl(this._value, this._then);

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
              as List<TrackWithMetaResponse>,
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
abstract class _$$_PlaylistWithTracksResponseCopyWith<$Res>
    implements $PlaylistWithTracksResponseCopyWith<$Res> {
  factory _$$_PlaylistWithTracksResponseCopyWith(
          _$_PlaylistWithTracksResponse value,
          $Res Function(_$_PlaylistWithTracksResponse) then) =
      __$$_PlaylistWithTracksResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      int total,
      List<TrackWithMetaResponse> items,
      int limit,
      int offset,
      String? next,
      String? previous});
}

/// @nodoc
class __$$_PlaylistWithTracksResponseCopyWithImpl<$Res>
    extends _$PlaylistWithTracksResponseCopyWithImpl<$Res,
        _$_PlaylistWithTracksResponse>
    implements _$$_PlaylistWithTracksResponseCopyWith<$Res> {
  __$$_PlaylistWithTracksResponseCopyWithImpl(
      _$_PlaylistWithTracksResponse _value,
      $Res Function(_$_PlaylistWithTracksResponse) _then)
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
    return _then(_$_PlaylistWithTracksResponse(
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
              as List<TrackWithMetaResponse>,
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
class _$_PlaylistWithTracksResponse implements _PlaylistWithTracksResponse {
  _$_PlaylistWithTracksResponse(
      {required this.href,
      required this.total,
      required final List<TrackWithMetaResponse> items,
      this.limit = 50,
      this.offset = 0,
      this.next,
      this.previous})
      : _items = items;

  factory _$_PlaylistWithTracksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistWithTracksResponseFromJson(json);

  @override
  final String href;
  @override
  final int total;
  final List<TrackWithMetaResponse> _items;
  @override
  List<TrackWithMetaResponse> get items {
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
    return 'PlaylistWithTracksResponse(href: $href, total: $total, items: $items, limit: $limit, offset: $offset, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistWithTracksResponse &&
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
  _$$_PlaylistWithTracksResponseCopyWith<_$_PlaylistWithTracksResponse>
      get copyWith => __$$_PlaylistWithTracksResponseCopyWithImpl<
          _$_PlaylistWithTracksResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistWithTracksResponseToJson(
      this,
    );
  }
}

abstract class _PlaylistWithTracksResponse
    implements PlaylistWithTracksResponse {
  factory _PlaylistWithTracksResponse(
      {required final String href,
      required final int total,
      required final List<TrackWithMetaResponse> items,
      final int limit,
      final int offset,
      final String? next,
      final String? previous}) = _$_PlaylistWithTracksResponse;

  factory _PlaylistWithTracksResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaylistWithTracksResponse.fromJson;

  @override
  String get href;
  @override
  int get total;
  @override
  List<TrackWithMetaResponse> get items;
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
  _$$_PlaylistWithTracksResponseCopyWith<_$_PlaylistWithTracksResponse>
      get copyWith => throw _privateConstructorUsedError;
}
