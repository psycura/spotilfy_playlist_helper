// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileState _$$_UserProfileStateFromJson(Map<String, dynamic> json) =>
    _$_UserProfileState(
      fetchingState:
          $enumDecodeNullable(_$FetchingStateEnumMap, json['fetchingState']) ??
              FetchingState.idle,
      profile: json['profile'] == null
          ? null
          : UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileStateToJson(_$_UserProfileState instance) =>
    <String, dynamic>{
      'fetchingState': _$FetchingStateEnumMap[instance.fetchingState]!,
      'profile': instance.profile?.toJson(),
    };

const _$FetchingStateEnumMap = {
  FetchingState.idle: 'idle',
  FetchingState.fetching: 'fetching',
  FetchingState.done: 'done',
  FetchingState.failure: 'failure',
};
