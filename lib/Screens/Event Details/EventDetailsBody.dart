import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:evently/Utility/Constants.dart';

import '../../Widgets/CircleIcons.dart';
import '../../Widgets/VCard.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Stack(
          children: [
            Image.asset(
              "assets/Images/e1.jpeg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              top: 2.h,
              left: 2.w,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleIcons(
                  icon: HeroIcons.arrowCircleLeft,
                ),
              ),
            ),
            Positioned(
                top: 2.h,
                right: 2.w,
                child: CircleIcons(
                  icon: HeroIcons.bookmark,
                )),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.64,
                minChildSize: 0.64,
                maxChildSize: 0.8,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: HexColor("#3D4552"),
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 3.h, left: 4.w, right: 4.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2.w),
                              child: Text(
                                "IEEE DAY SB VOLUNTEERS",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Padding(
                              padding: EdgeInsets.only(left: 2.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/Icons/avatar.png"),
                                  SizedBox(width: 2.w),
                                  Text(
                                    "Ritika Hirenath",
                                    style: GoogleFonts.poppins(
                                        color: HexColor("#969696"),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 2.w),
                                  HeroIcon(
                                    HeroIcons.badgeCheck,
                                    color: AppColors.neoncolor,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                CircleIcons(icon: HeroIcons.calendar),
                                SizedBox(width: 2.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Sat,Feb 20,2021",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                    Text("12:00 AM - 2:00 PM",
                                        style: GoogleFonts.poppins(
                                            color: HexColor("#969696"),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                CircleIcons(icon: HeroIcons.locationMarker),
                                SizedBox(width: 2.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("NHCE",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                    Text(
                                        "Falconry , CSE Department, Second Floor",
                                        style: GoogleFonts.poppins(
                                            color: HexColor("#969696"),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                CircleIcons(icon: HeroIcons.officeBuilding),
                                SizedBox(width: 2.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Offline",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                CircleIcons(icon: HeroIcons.userGroup),
                                SizedBox(width: 2.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Individual Event",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                CircleIcons(icon: HeroIcons.eye),
                                SizedBox(width: 2.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("20 Views",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                CircleIcons(icon: HeroIcons.login),
                                SizedBox(width: 2.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("10 / 100",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                    Text("Teams Registered",
                                        style: GoogleFonts.poppins(
                                            color: HexColor("#969696"),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 6.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      color: HexColor("#7862F7"),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text("Apply",
                                        style: GoogleFonts.chivo(
                                            color: Colors.white,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Container(
                                  height: 6.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: HexColor("#7862F7")),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text("I am interested",
                                        style: GoogleFonts.chivo(
                                            color: HexColor("#7862F7"),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 1.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Overview",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2.h),
                                  Text(
                                      "The IEEE Bangalore Section SAC Team and Bangalore Section Young Professionals, in collaboration with the IEEE NHCE Student Branch, are organizing an Orientation and Panel Discussion that will mainly be a townhall forum between students and section/student branch committee members to discuss the perks and benefits of being a part of the IEEE community as a student or graduate member.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 1.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("F.A.Q",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2.h),
                                  Text("What are the rules ?",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 1.h),
                                  Text(
                                      "All design elements, code, hardware builds, etc. for your project must be created during the event. Third party tools and frameworks are allowed as well as your normal tooling (Gulp, Yeoman, Composer, NPM, Bower, etc.). While you may not begin coding in advance, you can plan and discuss with your team in advance. Written documents and design sketches are allowed.  You may also incorporate pre-existing material that is freely available to the public into your project, such as public domain images, Creative Commons music, open-source libraries, existing APIs and platforms, and the like.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2.h),
                                  Text("What is the eligiblity criteria ?",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 1.h),
                                  Text(
                                      "Unlike hackathon events, Software Showdown competitors are allowed to bring projects they have worked on previously for weeks, months or years prior to the event. ",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2.h),
                                  Text("Have further queries ? ",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2.h),
                                  CarouselSlider(
                                    items: [
                                      Vcard(
                                        cardcolor: "#D7E7FF",
                                        name: 'Ritika Hiremath',
                                        headline: 'President of MD Club',
                                        email: 'ritika@company.com',
                                        number: '+91 7878787123',
                                        namecolor: HexColor("#5D9EFE"),
                                        headlinecolor: HexColor("#000000")
                                            .withOpacity(0.44),
                                      ),
                                      Vcard(
                                        cardcolor: "#32ff7e",
                                        name: 'Sanjana Chinta',
                                        headline: 'President of MD Club',
                                        email: 'sanjana@gmail.com',
                                        number: '70013990101',
                                        namecolor: HexColor("##00b894"),
                                        headlinecolor: HexColor("#000000")
                                            .withOpacity(0.44),
                                      ),
                                    ],
                                    options: CarouselOptions(
                                      height: 30.h,
                                      aspectRatio: 16 / 9,
                                      viewportFraction: 0.98,
                                      initialPage: 0,
                                      reverse: false,
                                      autoPlay: true,
                                      autoPlayInterval:
                                          const Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      scrollDirection: Axis.horizontal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
