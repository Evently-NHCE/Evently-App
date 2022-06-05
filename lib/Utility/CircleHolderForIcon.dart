import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class CircleContainerIcon extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const CircleContainerIcon(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.w, top: 1.h),
      child: InkWell(
        
        customBorder: const CircleBorder(),
        splashColor: HexColor("#CFD4FF"),
        onTap: onPressed,
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: HexColor("#CFD4FF"),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: ktextWhiteColor,
          ),
        ),
      ),
    );
  }
}