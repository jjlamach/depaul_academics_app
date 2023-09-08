import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
