import 'package:depaul_campus_connect/app/screens/signIn/sign_in_form_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Center(
        child: SignInFormPage(),
      ),
    );
  }
}
