// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_playlist_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectedPlaylistState _$$_SelectedPlaylistStateFromJson(
        Map<String, dynamic> json) =>
    _$_SelectedPlaylistState(
      mode: $enumDecodeNullable(_$SelectedModeEnumMap, json['mode']) ??
          SelectedMode.favorites,
      playlist: json['playlist'] == null
          ? null
          : SimplifiedPlaylist.fromJson(
              json['playlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SelectedPlaylistStateToJson(
        _$_SelectedPlaylistState instance) =>
    <String, dynamic>{
      'mode': _$SelectedModeEnumMap[instance.mode]!,
      'playlist': instance.playlist?.toJson(),
    };

const _$SelectedModeEnumMap = {
  SelectedMode.favorites: 'favorites',
  SelectedMode.playlist: 'playlist',
};
