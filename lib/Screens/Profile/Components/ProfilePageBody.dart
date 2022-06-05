import 'package:evently/Screens/Profile/Components/GetHead.dart';
import 'package:evently/Utility/CircleProfileHolder.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.h, left: 2.w, right: 2.w),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildappbar(),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h, right: 2.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleProfileHolder(
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")),
                    ),
                    height: 80,
                    width: 80,
                    color: ktextWhiteColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abdullah Tanzeem',
                          style: GoogleFonts.getFont(
                            "Chivo",
                            color: ktextWhiteColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1NH20CS188',
                          style: GoogleFonts.getFont(
                            "Chivo",
                            color: ktextWhiteColor.withOpacity(0.40),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            buildUpperCard(),
            SizedBox(
              height: 2.h,
            ),
            buildSecondCard()
          ],
        ),
      ),
    );
  }

  Widget buildUpperCard() {
    return SizedBox(
      height: 20.h,
      width: double.infinity,
      child: Card(
        elevation: 4,
        color: kNavbarcolour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.school,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'B.E',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.verified,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Admitted in 2020',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.apartment,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  SizedBox(
                    width: 75.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextScroll(
                            "New Horizon Collegeof Engineering",
                            velocity: Velocity(pixelsPerSecond: Offset(20, 0)),
                            pauseBetween: Duration(milliseconds: 1000),
                            mode: TextScrollMode.bouncing,
                            style:
                                TextStyle(color: ktextWhiteColor, fontSize: 20),
                            textAlign: TextAlign.right,
                            selectable: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSecondCard() {
    return SizedBox(
      height: 25.h,
      width: double.infinity,
      child: Card(
        elevation: 4,
        color: kNavbarcolour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FaIcon(
                    FontAwesomeIcons.github,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '@Pavel401',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '@pavel_401',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.call,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  SizedBox(
                    width: 75.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextScroll(
                            "7001399764",
                            velocity: Velocity(pixelsPerSecond: Offset(20, 0)),
                            pauseBetween: Duration(milliseconds: 1000),
                            mode: TextScrollMode.bouncing,
                            style:
                                TextStyle(color: ktextWhiteColor, fontSize: 18),
                            textAlign: TextAlign.right,
                            selectable: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    color: ktextWhiteColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'pavelalam401@gmail.com',
                    style: GoogleFonts.getFont(
                      "Chivo",
                      color: ktextWhiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
