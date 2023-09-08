// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Courses _$$_CoursesFromJson(Map<String, dynamic> json) => _$_Courses(
      courseDescription: json['courseDescription'] as String,
      courseName: json['courseName'] as String,
      id: (json['id'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_CoursesToJson(_$_Courses instance) =>
    <String, dynamic>{
      'courseDescription': instance.courseDescription,
      'courseName': instance.courseName,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
    };
