import 'package:evently/Screens/AbotUs%20Page/Components-2(New%20Page)/ConnectWithUsPage.dart';
import 'package:evently/Screens/AbotUs%20Page/Components-2(New%20Page)/Members.dart';

import 'package:evently/Utility/Constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class AboutUsPageBody extends StatefulWidget {
  const AboutUsPageBody({Key? key}) : super(key: key);

  @override
  State<AboutUsPageBody> createState() => _AboutUsPageBodyState();
}

class _AboutUsPageBodyState extends State<AboutUsPageBody> {
  int tabIndex = 0;
  List<String> tabs = [
    'Members',
    'Connect with us',
  ];
  List tabWidgets = [
    MembersList(),
    ConnectPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 32.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: HexColor("#3D4552"),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 30,
                        child: Image.asset("assets/Images/MDCLUB_LOGO.png"),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 75.w,
                            height: 4.h,
                            //color: Colors.green,
                            child: Text(
                              "MD CLUB",
                              style: GoogleFonts.poppins(
                                  color: AppColors.neoncolor,
                                  fontSize: 15.sp,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 55.w,
                            height: 2.h,
                            // color: Colors.red,
                            child: Text(
                              "Mobile App Development Club",
                              maxLines: 1,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 70.w,
                            height: 3.h,
                            //color: Colors.yellow,
                            child: Text(
                              "New Horizon College of Engineering",
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: 90.w,
                    //  color: Colors.yellow,
                    child: Text(
                      "Mobile Application Development Club is to advocate for the education and creation of modern applications within the mobile space. Through the advancement of programming skills found within the subset of mobile development and the utilization of small teams to create meaningful projects, the Mobile Application Development Club seeks to enrich mobile development activity on campus for all students of NHCE. This provides students with the opportunity to see their ideas come to fruition, forming a new community built on creativity, teamwork, entrepreneurship, and learning.",
                      maxLines: 18,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8.sp,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 2.h, left: 4.w, right: 4.w),
            width: 100.w,
            height: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: AppColors.secondaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: AppColors.neoncolor,
                    size: 20.sp,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.w,
                      height: 3.h,
                      //color: Colors.green,
                      child: Text(
                        "Dr. B. Rajalakshmi",
                        style: GoogleFonts.poppins(
                            color: AppColors.neoncolor,
                            fontSize: 12.sp,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 75.w,
                      height: 3.h,
                      // color: Colors.green,
                      child: Text(
                        "HOD, CSE Dept.",
                        style: GoogleFonts.poppins(
                            color: AppColors.whiteColor,
                            fontSize: 10.sp,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 2.h, left: 4.w, right: 4.w),
            width: 100.w,
            height: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: AppColors.secondaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 20.sp,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: AppColors.neoncolor,
                    size: 20.sp,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.w,
                      height: 3.h,
                      //color: Colors.green,
                      child: Text(
                        "Surya Pandey",
                        style: GoogleFonts.poppins(
                            color: AppColors.neoncolor,
                            fontSize: 12.sp,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 75.w,
                      height: 3.h,
                      // color: Colors.green,
                      child: Text(
                        "Assistant Professor, NHCE",
                        style: GoogleFonts.poppins(
                            color: AppColors.whiteColor,
                            fontSize: 10.sp,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              8,
              5,
              8,
              8,
            ),
            child: Container(
              width: 100.w,
              // color: Colors.red,
              height: 5.h,
              child: Padding(
                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 33,
                      width: 86,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              tabIndex = 0;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: tabIndex == 0
                                ? MaterialStateProperty.all<Color>(
                                    HexColor("#5E00D4"))
                                : MaterialStateProperty.all<Color>(
                                    HexColor("#303642")),
                            foregroundColor: tabIndex == 0
                                ? MaterialStateProperty.all<Color>(
                                    HexColor("#FFFFFF"))
                                : MaterialStateProperty.all<Color>(
                                    HexColor("#C9F560")),
                          ),
                          child: Text(
                            tabs[0],
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                    Container(
                      height: 4.h,
                      width: 30.w,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              tabIndex = 1;
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor: tabIndex == 1
                                ? MaterialStateProperty.all<Color>(
                                    HexColor("#5E00D4"))
                                : MaterialStateProperty.all<Color>(
                                    HexColor("#303642")),
                            foregroundColor: tabIndex == 1
                                ? MaterialStateProperty.all<Color>(
                                    HexColor("#FFFFFF"))
                                : MaterialStateProperty.all<Color>(
                                    HexColor("#C9F560")),
                          ),
                          child: Text(
                            tabs[1],
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          tabWidgets[tabIndex],
        ],
      ),
    );
  }
}
