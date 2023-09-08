import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
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
        body: BlocBuilder<CoursesCubit, CoursesState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
              ),
              loaded: (courses) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10.0,
                  ),
                  itemCount: 4,
                  padding: const EdgeInsets.all(10.0),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.person),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
