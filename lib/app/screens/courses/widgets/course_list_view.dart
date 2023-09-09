import 'package:auto_size_text/auto_size_text.dart';
import 'package:depaul_campus_connect/app/screens/courses/bloc/courses_cubit.dart';
import 'package:depaul_campus_connect/app/screens/courses/widgets/course_detail_view.dart';
import 'package:depaul_campus_connect/common/common.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseListView extends StatelessWidget {
  const CourseListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CourseDetailView(
                        course: courses[index],
                        url: Common.urls[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(Dimens.borderRadius),
                          bottomRight: Radius.circular(Dimens.borderRadius),
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
                                  topLeft: Radius.circular(Dimens.borderRadius),
                                ),
                                child: Image.network(
                                  height: 100.0,
                                  fit: BoxFit.fill,
                                  courses[index].imageUrl,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 20,
                                bottom: 10,
                                right: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          text: courses[index].name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    overflow: TextOverflow.ellipsis,
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
                  ),
                );
              },
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
