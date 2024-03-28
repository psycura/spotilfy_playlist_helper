import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner extends Equatable {
  final String display_name;
  final String href;
  final String id;
  final String uri;

  const Owner({
    required this.display_name,
    required this.href,
    required this.id,
    required this.uri,
  });

  Owner copyWith({
    String? display_name,
    String? href,
    String? id,
    String? uri,
  }) {
    return Owner(
      display_name: display_name ?? this.display_name,
      href: href ?? this.href,
      id: id ?? this.id,
      uri: uri ?? this.uri,
    );
  }

  Map<String, dynamic> toJson() => _$OwnerToJson(this);


  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  @override
  List<Object?> get props => [
        display_name,
        href,
        id,
        uri,
      ];
}
