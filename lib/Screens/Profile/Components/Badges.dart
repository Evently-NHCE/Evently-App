import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
          child: Padding(
        padding: const EdgeInsets.all(3),
        child: Text('EARNED BADGES',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: HexColor("#FFFFFF"),
                decorationColor: HexColor("#8246DE"),
                decoration: TextDecoration.underline,
                decorationThickness: 3)),
      )),
    );
  }
}
