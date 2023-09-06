import 'package:depaul_campus_connect/app/screens/home/widgets/home_page_form_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: HomePageForm(),
      ),
    );
  }
}
