import 'package:flutter/material.dart';

Widget HomeAppBar() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Image.asset("assets/Icons/Menu.png"),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset("assets/Icons/Notification.png"),
          onPressed: () {},
        ),
      ],
    ),
  );
}
