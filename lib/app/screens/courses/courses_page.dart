import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
import 'package:depaul_campus_connect/domain/models/courses.dart';
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
        body: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 10.0),
          itemCount: 4,
          padding: const EdgeInsets.all(10.0),
          itemBuilder: (context, index) => Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: BlocBuilder<CoursesCubit, CoursesState>(
              builder: (context, state) => Text('State: $state'),
            ),
          ),
        ),
      ),
    );
  }
}
