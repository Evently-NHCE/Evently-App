import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:evently/Screens/AbotUs%20Page/Components/RoundedRectIcon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CustomDialog.dart';

class CircleAvatarCard extends StatelessWidget {
  String name;
  String linkedinUrl;
  String githubUrl;
  String instagramUrl;
  String imagePath;
  CircleAvatarCard({
    Key? key,
    required this.name,
    required this.linkedinUrl,
    required this.githubUrl,
    required this.instagramUrl,
    required this.imagePath,
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
          SizedBox(
            height: 1.h,
          ),
          Center(
              child: CircleAvatar(
            radius: 20.w,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 19.w,
              backgroundImage: AssetImage(imagePath),
            ),
          )),
          SizedBox(
            height: 1.h,
          ),
          Container(
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
                        name,
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
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(linkedinUrl));
                        },
                        child: RRIcon(
                          icon: AntIcons.linkedinFilled,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(githubUrl));
                        },
                        child: RRIcon(
                          icon: AntIcons.githubFilled,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(instagramUrl));
                        },
                        child: RRIcon(
                          icon: AntIcons.instagramFilled,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
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
