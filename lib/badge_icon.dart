import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  const BadgeIcon({Key? key, required this.name, required this.level})
      : super(key: key);
  final String name;
  final int level;

  @override
  Widget build(BuildContext context) {
    const Color selectedColor = Colors.black;
    BadgeDot dot = const BadgeDot(color: selectedColor);

    List<Widget> dots = [];
    if (level == 1) {
      dots = [Positioned(left: 8, top: 10, child: dot)];
    } else if (level == 2) {
      dots = [
        Positioned(left: 8, top: 4, child: dot),
        Positioned(left: 8, top: 16, child: dot)
      ];
    } else if (level == 3) {
      dots = [
        Positioned(left: 8, top: 0, child: dot),
        Positioned(left: 8, top: 10, child: dot),
        Positioned(left: 8, top: 20, child: dot)
      ];
    }

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        children: [
          Chip(
              visualDensity: const VisualDensity(vertical: -3.2),
              label: Text('   $name')),
          ...dots,
        ],
      ),
    );
  }
}

/// Return a dot as the Level indicator.
class BadgeDot extends StatelessWidget {
  const BadgeDot({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: color, size: 12);
  }
}
