import 'package:auto_size_text/auto_size_text.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:depaul_campus_connect/domain/models/courses.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetailView extends StatelessWidget {
  final Courses course;
  final String url;
  const CourseDetailView({
    required this.course,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          course.name.concatenateUntil(":"),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(course.imageUrl),
            const SizedBox(height: 10.0),
            AutoSizeText(
              course.description,
              style: const TextStyle(
                fontSize: 18.0,
              ),
              maxLines: 4,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: OutlinedButton(
                onPressed: () async {
                  final URL = Uri.parse(url);
                  if (await canLaunchUrl(URL)) {
                    await launchUrl(URL);
                  } else {
                    throw 'Could not launch URL.';
                  }
                },
                child: const Text('Full course schedule'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
