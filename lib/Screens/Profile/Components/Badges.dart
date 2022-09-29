import 'package:flutter/material.dart';

class BadgesSection extends StatefulWidget {
  const BadgesSection({Key? key}) : super(key: key);

  @override
  State<BadgesSection> createState() => _BadgesSectionState();
}

class _BadgesSectionState extends State<BadgesSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Badges',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
