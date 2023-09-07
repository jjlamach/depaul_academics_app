import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:flutter/material.dart';

class SignInFormPage extends StatefulWidget {
  const SignInFormPage({super.key});

  @override
  State<SignInFormPage> createState() => _SignInFormPageState();
}

class _SignInFormPageState extends State<SignInFormPage> {
  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: [
        EmailAuthProvider(),
      ],
      actions: [
        AuthStateChangeAction<SignedIn>(
          (context, state) {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
      ],
      headerMaxExtent: MediaQuery.of(context).size.height * 0.3,
      headerBuilder: (context, constraints, shrinkOffset) {
        return Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.borderRadius),
            child: Image.asset(
              'lib/assets/DULOGO_no_background.png',
            ),
          ),
        );
      },
    );
  }
}
