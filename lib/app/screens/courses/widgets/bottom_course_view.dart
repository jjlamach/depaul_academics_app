import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomCourseView extends StatelessWidget {
  const BottomCourseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: BlocBuilder<CoursesCubit, CoursesState>(
        builder: (context, state) {
          final totalCourses = state.whenOrNull(
            loaded: (courses) => courses.length,
          );
          final courses = state.whenOrNull(
            loaded: (courses) => courses,
          );

          int totalCredits = 0;
          if (courses != null) {
            for (var element in courses) {
              totalCredits += element.credits;
            }
          }
          return Column(
            children: [
              Text(
                '${totalCourses ?? 0} courses for this Quarter.',
              ),
              Text(
                "$totalCredits/240 for graduation.",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
