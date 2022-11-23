import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class RoundedIconButton extends StatelessWidget {
  final String hinttext;
  const RoundedIconButton({Key? key, required this.hinttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: HexColor("#8255CC"), borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            hinttext,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
