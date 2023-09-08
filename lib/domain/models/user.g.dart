// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      city: json['city'] as String,
      country: json['country'] as String,
      email: json['email'] as String,
      id: (json['id'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      language: json['language'] as String,
      lastName: json['lastName'] as String,
      name: json['name'] as String,
      online: json['online'] as bool,
      password: json['password'] as String,
      phone: json['phone'] as String,
      username: json['username'] as String,
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'email': instance.email,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'language': instance.language,
      'lastName': instance.lastName,
      'name': instance.name,
      'online': instance.online,
      'password': instance.password,
      'phone': instance.phone,
      'username': instance.username,
      'zip': instance.zip,
    };
