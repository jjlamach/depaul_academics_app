import 'package:depaul_campus_connect/app/screens/home/home_page.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(14, 65, 115, 1),
);

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
        colorScheme: kColorScheme,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
