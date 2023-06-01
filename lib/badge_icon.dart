import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  const BadgeIcon({Key? key, required this.name, required this.level})
      : super(key: key);
  final String name;
  final int level;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: SizedBox(
          height: 33,
          child: Chip(
              padding: const EdgeInsets.all(0.1),
              label: BadgeLabel(text: name, level: level)),
        ));
  }
}

/// Return a dot as the Level indicator.
class BadgeDot extends StatelessWidget {
  const BadgeDot({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: color, size: 10);
  }
}

class DotColumn extends StatelessWidget {
  const DotColumn({Key? key, required this.level}) : super(key: key);
  final int level;
  @override
  Widget build(BuildContext context) {
    BadgeDot dot = const BadgeDot(color: Colors.black);
    List<BadgeDot> dotArray = List.filled(level, dot);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: dotArray);
  }
}

class BadgeLabel extends StatelessWidget {
  const BadgeLabel({Key? key, required this.text, required this.level})
      : super(key: key);
  final String text;
  final int level;
  @override
  Widget build(BuildContext context) {
    final dotColumn = DotColumn(level: level);
    return Row(mainAxisSize: MainAxisSize.min, children: [
      dotColumn,
      const SizedBox(width: 2),
      Text(text),
    ]);
  }
}
