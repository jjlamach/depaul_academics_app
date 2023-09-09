// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Courses _$$_CoursesFromJson(Map<String, dynamic> json) => _$_Courses(
      name: json['name'] as String,
      description: json['description'] as String,
      professor: json['professor'] as String,
      credits: json['credits'] as int,
    );

Map<String, dynamic> _$$_CoursesToJson(_$_Courses instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'professor': instance.professor,
      'credits': instance.credits,
    };
