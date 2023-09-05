import 'package:flutter/material.dart';

void main() {
  runApp(const DePaulUCampusConnect());
}

class DePaulUCampusConnect extends StatelessWidget {
  const DePaulUCampusConnect({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini DU Campus Connect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
