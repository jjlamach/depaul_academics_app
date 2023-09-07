import 'package:depaul_campus_connect/common/dimens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OptionsCardView extends StatelessWidget {
  final String cardName;
  final IconData icon;
  const OptionsCardView({
    required this.cardName,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Dimens.cardElevation,
      child: Column(
        children: [
          const Spacer(),
          FaIcon(
            icon,
            size: 50.0,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              cardName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimens.fontSizeButtons,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
