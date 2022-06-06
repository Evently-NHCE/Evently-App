import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Utility/Colors.dart';

class RoundedBoxTextField extends StatelessWidget {
  final String hintText;
  final IconData icondata;
  final bool obscureText;
  final bool autocorrect;
  final bool enableSuggestions;
  const RoundedBoxTextField(
      {Key? key,
      required this.icondata,
      required this.hintText,
      required this.obscureText,
      required this.autocorrect,
      required this.enableSuggestions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kNavbarcolour,
      ),
      child: TextField(
        obscureText: obscureText,
        enableSuggestions: enableSuggestions,
        autocorrect: autocorrect,
        style: TextStyle(color: kWhiteColor),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kWhiteColor, width: 1),
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: HexColor("#808999")),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
          prefixIcon: Icon(
            icondata,
            color: HexColor("#808999"),
            size: 30,
          ),
        ),
      ),
    );
  }
}
