import 'package:flutter/material.dart';

class HomePageForm extends StatefulWidget {
  const HomePageForm({super.key});

  @override
  State<HomePageForm> createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  @override
  Widget build(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width * 0.5; // 50% of screen width
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'lib/assets/depaul_logo.jpg',
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: width,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: "Campus Connect ID",
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: width,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: "Password",
              ),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(
                Theme.of(context).colorScheme.secondary,
              ),
            ),
            onPressed: () {},
            child: Text("Log In"),
          )
        ],
      ),
    );
  }
}
