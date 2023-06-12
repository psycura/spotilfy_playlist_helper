// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlists_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistsState _$$_PlaylistsStateFromJson(Map<String, dynamic> json) =>
    _$_PlaylistsState(
      fetchingState:
          $enumDecodeNullable(_$FetchingStateEnumMap, json['fetchingState']) ??
              FetchingState.idle,
      playlistsResponse: json['playlistsResponse'] == null
          ? null
          : PlaylistsResponse.fromJson(
              json['playlistsResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaylistsStateToJson(_$_PlaylistsState instance) =>
    <String, dynamic>{
      'fetchingState': _$FetchingStateEnumMap[instance.fetchingState]!,
      'playlistsResponse': instance.playlistsResponse?.toJson(),
    };

const _$FetchingStateEnumMap = {
  FetchingState.idle: 'idle',
  FetchingState.fetching: 'fetching',
  FetchingState.done: 'done',
  FetchingState.failure: 'failure',
};
