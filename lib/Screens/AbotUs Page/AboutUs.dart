import 'package:evently/Screens/AbotUs%20Page/Components/AboutUsBody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sizer/sizer.dart';

import '../../Utility/Constants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            //  drawerController.openDrawer();
            Navigator.of(context).pop();
          },
          child: Container(
              margin:
                  EdgeInsets.only(left: 2.w, top: 1.h, bottom: 1.h, right: 2.w),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: HeroIcon(HeroIcons.chevronLeft, color: Colors.white)),
        ),
        title: Text(
          "Key Members",
          style: GoogleFonts.poppins(
              //   color: Color.fromRGBO(65, 84, 252, 0.44),
              fontSize: 20,
              letterSpacing: 0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: AboutUsBody(),
    );
  }
}
