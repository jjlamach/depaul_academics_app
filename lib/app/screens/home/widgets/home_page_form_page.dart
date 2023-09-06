import 'package:depaul_campus_connect/app/screens/home/widgets/text_form_field_ccid.dart';
import 'package:depaul_campus_connect/app/screens/home/widgets/text_form_field_password.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomePageForm extends StatefulWidget {
  const HomePageForm({super.key});

  @override
  State<HomePageForm> createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      headerMaxExtent: MediaQuery.of(context).size.height * 0.3,
      headerBuilder: (context, constraints, shrinkOffset) {
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.borderRadius),
            child: Image.asset(
              'lib/assets/depaul_logo.jpg',
            ),
          ),
        );
      },
    );
  }
}
