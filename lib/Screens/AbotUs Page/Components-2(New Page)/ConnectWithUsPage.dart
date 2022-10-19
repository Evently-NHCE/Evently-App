import 'package:evently/Utility/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Connect with us",
          style: GoogleFonts.poppins(
              color: AppColors.whiteColor,
              fontSize: 10.sp,
              letterSpacing: 0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          height: 47,
          width: 157,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  HexColor("#F047FF").withOpacity(0.44),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.instagram,
                  color: HexColor("#F047FF"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Instagram',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          height: 47,
          width: 157,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  HexColor("#4154FC").withOpacity(0.44),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.instagram,
                  color: HexColor("#4154FC"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'LinkedIn',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
