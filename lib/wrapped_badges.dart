import 'package:flutter/material.dart';

import 'badge_icon.dart';

class WrappedBadges extends StatelessWidget {
  const WrappedBadges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Wrap(children: [
      BadgeIcon(name: 'Badge 1', level: 1),
      BadgeIcon(name: 'Badge 2', level: 2),
      BadgeIcon(name: 'Badge 3', level: 3),
      BadgeIcon(name: 'Badge 4', level: 3),
      BadgeIcon(name: 'Badge 5', level: 2),
      BadgeIcon(name: 'Badge 6', level: 1),
      BadgeIcon(name: 'Badge 7', level: 2),
    ]);
  }
}
