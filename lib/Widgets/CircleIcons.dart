// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:evently/Utility/Constants.dart';

class CircleIcons extends StatelessWidget {
  HeroIcons icon;
  CircleIcons({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var theme;
    return Container(
      height: 5.h,
      width: 10.w,
      decoration: BoxDecoration(
          color: HexColor("#303642"), borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: HeroIcon(
          icon,
          size: 10,
          solid: false,
          color: AppColors.neoncolor,
        ),
      ),
    );
  }
}
