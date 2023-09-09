import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses.g.dart';
part 'courses.freezed.dart';

@freezed
class Courses with _$Courses {
  const factory Courses({
    required String name,
    required String description,
    required String professor,
    required int credits,
  }) = _Courses;

  factory Courses.fromJson(Map<String, dynamic> json) =>
      _$CoursesFromJson(json);
}
