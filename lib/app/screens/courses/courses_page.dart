import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
import 'package:depaul_campus_connect/app/screens/courses/widgets/bottom_course_view.dart';
import 'package:depaul_campus_connect/app/screens/courses/widgets/course_list_view.dart';
import 'package:depaul_campus_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoursesCubit>(
      create: (blocContext) => getIt<CoursesCubit>()..getCourses(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: const Column(
          children: [
            CourseListView(),
            BottomCourseView(),
          ],
        ),
      ),
    );
  }
}
