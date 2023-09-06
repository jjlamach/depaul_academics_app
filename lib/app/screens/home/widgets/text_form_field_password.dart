import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:flutter/material.dart';

class TextFormFieldPassword extends StatelessWidget {
  final String validatorMessage;
  final String hintTextMessage;
  const TextFormFieldPassword(
      {required this.validatorMessage,
      required this.hintTextMessage,
      super.key});

  @override
  Widget build(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width * Dimens.seventyPercentOfScreenWidth;
    return SizedBox(
      width: width,
      child: TextFormField(
        autofocus: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validatorMessage;
          }
          return null;
        },
        onSaved: (password) {
          print("Password: $password");
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.borderRadius),
          ),
          hintText: hintTextMessage,
        ),
      ),
    );
  }
}
