// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlists_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistsResponse _$PlaylistsResponseFromJson(Map<String, dynamic> json) {
  return _PlaylistsResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaylistsResponse {
  String get href => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<PlaylistItemResponse> get items => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistsResponseCopyWith<PlaylistsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsResponseCopyWith<$Res> {
  factory $PlaylistsResponseCopyWith(
          PlaylistsResponse value, $Res Function(PlaylistsResponse) then) =
      _$PlaylistsResponseCopyWithImpl<$Res, PlaylistsResponse>;
  @useResult
  $Res call(
      {String href,
      int limit,
      int offset,
      int total,
      List<PlaylistItemResponse> items,
      String? next,
      String? previous});
}

/// @nodoc
class _$PlaylistsResponseCopyWithImpl<$Res, $Val extends PlaylistsResponse>
    implements $PlaylistsResponseCopyWith<$Res> {
  _$PlaylistsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
    Object? items = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlaylistItemResponse>,
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
abstract class _$$_PlaylistsResponseCopyWith<$Res>
    implements $PlaylistsResponseCopyWith<$Res> {
  factory _$$_PlaylistsResponseCopyWith(_$_PlaylistsResponse value,
          $Res Function(_$_PlaylistsResponse) then) =
      __$$_PlaylistsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      int limit,
      int offset,
      int total,
      List<PlaylistItemResponse> items,
      String? next,
      String? previous});
}

/// @nodoc
class __$$_PlaylistsResponseCopyWithImpl<$Res>
    extends _$PlaylistsResponseCopyWithImpl<$Res, _$_PlaylistsResponse>
    implements _$$_PlaylistsResponseCopyWith<$Res> {
  __$$_PlaylistsResponseCopyWithImpl(
      _$_PlaylistsResponse _value, $Res Function(_$_PlaylistsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
    Object? items = null,
    Object? next = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$_PlaylistsResponse(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlaylistItemResponse>,
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
class _$_PlaylistsResponse implements _PlaylistsResponse {
  _$_PlaylistsResponse(
      {required this.href,
      required this.limit,
      required this.offset,
      required this.total,
      required final List<PlaylistItemResponse> items,
      this.next,
      this.previous})
      : _items = items;

  factory _$_PlaylistsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistsResponseFromJson(json);

  @override
  final String href;
  @override
  final int limit;
  @override
  final int offset;
  @override
  final int total;
  final List<PlaylistItemResponse> _items;
  @override
  List<PlaylistItemResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? next;
  @override
  final String? previous;

  @override
  String toString() {
    return 'PlaylistsResponse(href: $href, limit: $limit, offset: $offset, total: $total, items: $items, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistsResponse &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, limit, offset, total,
      const DeepCollectionEquality().hash(_items), next, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistsResponseCopyWith<_$_PlaylistsResponse> get copyWith =>
      __$$_PlaylistsResponseCopyWithImpl<_$_PlaylistsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistsResponseToJson(
      this,
    );
  }
}

abstract class _PlaylistsResponse implements PlaylistsResponse {
  factory _PlaylistsResponse(
      {required final String href,
      required final int limit,
      required final int offset,
      required final int total,
      required final List<PlaylistItemResponse> items,
      final String? next,
      final String? previous}) = _$_PlaylistsResponse;

  factory _PlaylistsResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaylistsResponse.fromJson;

  @override
  String get href;
  @override
  int get limit;
  @override
  int get offset;
  @override
  int get total;
  @override
  List<PlaylistItemResponse> get items;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistsResponseCopyWith<_$_PlaylistsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
