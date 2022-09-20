import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class Vcard extends StatelessWidget {
  final String cardcolor;
  final String name;
  final String headline;
  final String email;
  final String number;
  final Color namecolor;
  final Color headlinecolor;

  const Vcard(
      {Key? key,
      required this.cardcolor,
      required this.name,
      required this.headline,
      required this.email,
      required this.number,
      required this.namecolor,
      required this.headlinecolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 95.w,
      decoration: BoxDecoration(
        color: HexColor(cardcolor.toString()),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h, bottom: 1.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: GoogleFonts.getFont(
                    "Chivo",
                    color: namecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              headline,
              style: GoogleFonts.getFont(
                "Chivo",
                color: headlinecolor.withOpacity(0.44),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.alternate_email,
                  color: namecolor,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  email,
                  style: GoogleFonts.getFont(
                    "Chivo",
                    color: namecolor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.call_outlined,
                  color: namecolor,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  '+91',
                  style: GoogleFonts.getFont(
                    "Chivo",
                    color: namecolor.withOpacity(0.45),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  width: 1.5.w,
                ),
                Text(
                  number,
                  style: GoogleFonts.getFont(
                    "Chivo",
                    color: namecolor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
