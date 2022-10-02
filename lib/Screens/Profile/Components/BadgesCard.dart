import 'package:flutter/material.dart';

enum BadgeCardType {
  Earned,
  Available,
}

Widget BadgeCard(BadgeCardType type, IconData icon) {
  late String badge;
  if (type == BadgeCardType.Earned) {
    badge = 'assets/Images/badgebg.png';
  }
  if (type == BadgeCardType.Available) {
    badge = 'assets/Images/badgeplain.png';
  }
  return Stack(
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
  );
}
