import 'package:depaul_campus_connect/app/screens/home/widgets/text_form_field_ccid.dart';
import 'package:depaul_campus_connect/app/screens/home/widgets/text_form_field_password.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:flutter/material.dart';

class HomePageForm extends StatefulWidget {
  const HomePageForm({super.key});

  @override
  State<HomePageForm> createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (formContext) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.borderRadius),
              child: Image.asset(
                'lib/assets/depaul_logo.jpg',
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 50),
            const TextFormFieldCampusConnectID(
              validatorMessage: "Missing ID",
              hintTextMessage: "Campus Connect ID",
            ),
            const SizedBox(height: 20),
            const TextFormFieldPassword(
              validatorMessage: "Missing password",
              hintTextMessage: "Password",
            ),
            const SizedBox(height: 50),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimens.borderRadius),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Theme.of(context).colorScheme.primary,
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 15,
                  ),
                ),
                foregroundColor: MaterialStatePropertyAll(
                  Theme.of(context).colorScheme.secondary,
                ),
              ),
              onPressed: () => checkFormFields(formContext),
              child: const Text(
                "Log In",
                style: TextStyle(
                  fontSize: Dimens.fontSizeButtons,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkFormFields(BuildContext context) {
    final loginForm = Form.of(context);
    final isFormValid = loginForm.validate();
    if (isFormValid) {
      loginForm.save();
    }
  }
}
