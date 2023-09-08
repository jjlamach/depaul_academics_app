import 'package:auto_size_text/auto_size_text.dart';
import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
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
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<CoursesCubit, CoursesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    loaded: (courses) => ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10.0,
                      ),
                      itemCount: 4,
                      // itemCount: courses.length,
                      padding: const EdgeInsets.all(10.0),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(Dimens.borderRadius),
                                bottomRight:
                                    Radius.circular(Dimens.borderRadius),
                              ),
                              color: Colors.grey.shade200,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(
                                            Dimens.borderRadius),
                                      ),
                                      child: Image.network(
                                        height: 100.0,
                                        fit: BoxFit.fill,
                                        "https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2973&q=80",
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText.rich(
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          TextSpan(
                                            text: "Professor: ",
                                            children: [
                                              TextSpan(
                                                text: courses[index].professor,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        AutoSizeText.rich(
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          TextSpan(
                                            text: "Course: ",
                                            children: [
                                              TextSpan(
                                                text: courses[index].courseName,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        AutoSizeText.rich(
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          TextSpan(
                                            text: "Credits: ",
                                            children: [
                                              TextSpan(
                                                text: 4.toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Column(
                children: [
                  BlocConsumer<CoursesCubit, CoursesState>(
                    listener: (context, state) => {},
                    builder: (context, state) {
                      final totalCourses = state.whenOrNull(
                        loaded: (courses) => courses.length,
                      );
                      return Text(
                        '${totalCourses ?? 0} courses on this Quarter',
                      );
                    },
                  ),
                  Text(
                    "16/240 for graduation",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
