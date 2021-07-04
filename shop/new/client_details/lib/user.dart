import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final double id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;
  User({this.id, this.email, this.first_name, this.last_name, this.avatar});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
