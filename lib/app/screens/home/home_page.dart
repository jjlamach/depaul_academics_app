import 'package:depaul_campus_connect/app/screens/home/widgets/options_card_view.dart';
import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(20.0),
        children: [
          GestureDetector(
            onTap: () => {},
            child: const OptionsCardView(
              cardName: "My Courses",
              icon: FontAwesomeIcons.book,
            ),
          ),
          GestureDetector(
            onTap: () => {},
            child: const OptionsCardView(
              cardName: "Professors",
              icon: FontAwesomeIcons.chalkboardTeacher,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const OptionsCardView(
              cardName: "Cafeteria",
              icon: FontAwesomeIcons.bowlFood,
            ),
          ),
          GestureDetector(
            child: const OptionsCardView(
              cardName: "University Services",
              icon: FontAwesomeIcons.wifi,
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 50.0,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
