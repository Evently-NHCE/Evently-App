import 'package:evently/Screens/Profile/Components/BadgeDialogue.dart';
import 'package:flutter/material.dart';

enum BadgeCardType {
  Earned,
  Available,
}

Widget BadgeCard(
    BadgeCardType type, IconData icon, context, String msg, String title) {
  late String badge;
  if (type == BadgeCardType.Earned) {
    badge = 'assets/Images/badgebg.png';
  }
  if (type == BadgeCardType.Available) {
    badge = 'assets/Images/badgeplain.png';
  }
  return GestureDetector(
      child: Stack(
        children: [
          Image.asset(badge),
          Transform.translate(
            offset: Offset(28, 28),
            child: Icon(
              icon,
              color: Colors.white,
              size: 45,
            ),
          ),
        ],
      ),
      onTap: () {
        showMyDialog(context, msg, title, icon);
      });
}
