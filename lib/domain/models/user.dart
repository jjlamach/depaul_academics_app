import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String city,
    required String country,
    required String email,
    required double id,
    required String imageUrl,
    required String language,
    required String lastName,
    required String name,
    required bool online,
    required String password,
    required String phone,
    required String username,
    required String zip,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
