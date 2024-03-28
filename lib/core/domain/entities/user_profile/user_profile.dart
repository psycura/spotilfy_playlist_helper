import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:spotify_playlist_helper/core/domain/entities/entities.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile extends Equatable {
  final String display_name;
  final String email;
  final String id;
  final List<ImageEntity> images;
  final String uri;

  const UserProfile({
    required this.display_name,
    required this.email,
    required this.id,
    required this.images,
    required this.uri,
  });

  UserProfile copyWith({
    String? display_name,
    String? email,
    String? id,
    List<ImageEntity>? images,
    String? uri,
  }) {
    return UserProfile(
      display_name: display_name ?? this.display_name,
      email: email ?? this.email,
      id: id ?? this.id,
      images: images ?? this.images,
      uri: uri ?? this.uri,
    );
  }

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  @override
  List<Object?> get props => [
        display_name,
        email,
        id,
        images,
        uri,
      ];
}
