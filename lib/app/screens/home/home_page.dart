import 'package:depaul_campus_connect/app/screens/signIn/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: TextButton(
          onPressed: () async {
            FirebaseAuth.instance.signOut().then(
              (value) {
                Navigator.of(context).pushReplacementNamed("/");
              },
            );
          },
          child: Text("SignedOut"),
        ),
      ),
    );
  }
}
