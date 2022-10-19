import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../../../Utility/Constants.dart';

class SimPleAboutUsCard extends StatelessWidget {
  const SimPleAboutUsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.w, right: 1.w),
      width: 45.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/Images/about.jpeg")),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/Images/Saif.png")),
          Container(
            height: 10.h,
            width: 45.w,
            decoration: BoxDecoration(
                color: HexColor("#3D4552"),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, top: 0.5.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Saif",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        AntIcons.linkedinFilled,
                        color: AppColors.neoncolor,
                      ),
                      Icon(
                        AntIcons.githubFilled,
                        color: AppColors.neoncolor,
                      ),
                      Icon(
                        AntIcons.instagramFilled,
                        color: AppColors.neoncolor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
