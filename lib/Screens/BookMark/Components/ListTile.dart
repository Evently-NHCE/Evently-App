import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

enum ListTileType {
  location,
  date,
}

Widget ListTileCard(ListTileType type, var bookmark) {
  //print(bookmark);
  late String icon;
  late String title;
  late String subtitle;
  if (type == ListTileType.location) {
    icon = 'assets/Icons/location.png';
    title = '';
    subtitle = bookmark['location'];
  }
  if (type == ListTileType.date) {
    icon = 'assets/Icons/Calendar.png';
    title = bookmark['date'];
    subtitle = bookmark['time'];
  }
  return Container(
    // color: Colors.black,
    width: 50.w,
    height: 5.h,
    child: ListTile(
      leading: Transform.translate(
        offset: Offset(0, -10),
        child: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              icon,
              fit: BoxFit.fitHeight,
            )),
      ),
      contentPadding: EdgeInsets.zero,
      title: type == ListTileType.location
          ? null
          : Transform.translate(
              offset: Offset(-10, -10),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
      subtitle: Transform.translate(
        offset: Offset(-10, -12),
        child: Text(
          subtitle,
          style: GoogleFonts.poppins(
              color: HexColor("#969696"),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    ),
  );
}
