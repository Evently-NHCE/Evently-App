// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:evently/Utility/Constants.dart';

class RRIcon extends StatelessWidget {
  IconData icon;
  RRIcon({
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
        child: Icon(
          icon,
          size: 25,
          color: AppColors.neoncolor,
        ),
      ),
    );
  }
}
