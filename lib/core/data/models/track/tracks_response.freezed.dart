// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TracksResponse _$TracksResponseFromJson(Map<String, dynamic> json) {
  return _TracksResponse.fromJson(json);
}

/// @nodoc
mixin _$TracksResponse {
  String get href => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<TrackWithMetaResponse> get items => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TracksResponseCopyWith<TracksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksResponseCopyWith<$Res> {
  factory $TracksResponseCopyWith(
          TracksResponse value, $Res Function(TracksResponse) then) =
      _$TracksResponseCopyWithImpl<$Res, TracksResponse>;
  @useResult
  $Res call(
      {String href,
      int limit,
      int offset,
      int total,
      List<TrackWithMetaResponse> items,
      String? next,
      String? previous});
}

/// @nodoc
class _$TracksResponseCopyWithImpl<$Res, $Val extends TracksResponse>
    implements $TracksResponseCopyWith<$Res> {
  _$TracksResponseCopyWithImpl(this._value, this._then);

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
              as List<TrackWithMetaResponse>,
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
abstract class _$$_TracksResponseCopyWith<$Res>
    implements $TracksResponseCopyWith<$Res> {
  factory _$$_TracksResponseCopyWith(
          _$_TracksResponse value, $Res Function(_$_TracksResponse) then) =
      __$$_TracksResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String href,
      int limit,
      int offset,
      int total,
      List<TrackWithMetaResponse> items,
      String? next,
      String? previous});
}

/// @nodoc
class __$$_TracksResponseCopyWithImpl<$Res>
    extends _$TracksResponseCopyWithImpl<$Res, _$_TracksResponse>
    implements _$$_TracksResponseCopyWith<$Res> {
  __$$_TracksResponseCopyWithImpl(
      _$_TracksResponse _value, $Res Function(_$_TracksResponse) _then)
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
    return _then(_$_TracksResponse(
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
              as List<TrackWithMetaResponse>,
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
class _$_TracksResponse implements _TracksResponse {
  _$_TracksResponse(
      {required this.href,
      required this.limit,
      required this.offset,
      required this.total,
      required final List<TrackWithMetaResponse> items,
      this.next,
      this.previous})
      : _items = items;

  factory _$_TracksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TracksResponseFromJson(json);

  @override
  final String href;
  @override
  final int limit;
  @override
  final int offset;
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
  final String? next;
  @override
  final String? previous;

  @override
  String toString() {
    return 'TracksResponse(href: $href, limit: $limit, offset: $offset, total: $total, items: $items, next: $next, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TracksResponse &&
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
  _$$_TracksResponseCopyWith<_$_TracksResponse> get copyWith =>
      __$$_TracksResponseCopyWithImpl<_$_TracksResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TracksResponseToJson(
      this,
    );
  }
}

abstract class _TracksResponse implements TracksResponse {
  factory _TracksResponse(
      {required final String href,
      required final int limit,
      required final int offset,
      required final int total,
      required final List<TrackWithMetaResponse> items,
      final String? next,
      final String? previous}) = _$_TracksResponse;

  factory _TracksResponse.fromJson(Map<String, dynamic> json) =
      _$_TracksResponse.fromJson;

  @override
  String get href;
  @override
  int get limit;
  @override
  int get offset;
  @override
  int get total;
  @override
  List<TrackWithMetaResponse> get items;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  @JsonKey(ignore: true)
  _$$_TracksResponseCopyWith<_$_TracksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
