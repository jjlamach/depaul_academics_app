import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses.g.dart';
part 'courses.freezed.dart';

@freezed
class Courses with _$Courses {
  const factory Courses({
    required String courseDescription,
    required String courseName,
    required double id,
    required String imageUrl,
  }) = _Courses;

  factory Courses.fromJson(Map<String, dynamic> json) =>
      _$CoursesFromJson(json);
}