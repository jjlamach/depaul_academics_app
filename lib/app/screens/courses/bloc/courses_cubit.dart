import 'package:depaul_campus_connect/domain/models/courses.dart';
import 'package:depaul_campus_connect/domain/usecase/get_courses_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_cubit.freezed.dart';

class CoursesCubit extends Cubit<CoursesState> {
  final GetCoursesUseCase _useCase;
  CoursesCubit(this._useCase) : super(_Loading());

  void getCourses() async {
    try {
      final response = await _useCase.getCourses();
      emit(CoursesState.loading());
      emit(CoursesState.loaded(response));
    } on Exception catch (error) {
      emit(CoursesState.error(error));
    }
  }
}

@freezed
class CoursesState with _$CoursesState {
  factory CoursesState.initial() = _Initial;
  factory CoursesState.loading() = _Loading;
  factory CoursesState.loaded(List<Courses> courses) = _Loaded;
  factory CoursesState.error(Exception error) = _Error;
}
