import 'package:evently/Screens/Profile/Components/About.dart';
import 'package:evently/Screens/Profile/Components/Badges.dart';
import 'package:evently/Screens/Profile/Components/Certificate.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  int tabIndex = 0;
  List<String> tabs = ['About', 'Badges', 'Certificates', 'Badges'];
  List tabWidgets = [
    AboutSection(),
    BadgesSection(),
    CertificateSection(),
    BadgesSection()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 29.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: HexColor("#3D4552"),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Profile',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 254,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: HeroIcon(
                              HeroIcons.bell,
                              color: HexColor("#C9F560"),
                              solid: true,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            backgroundColor: HexColor("#FEBD06"),
                            radius: 72.17 / 2,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    'Ritika Hirenath',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: HeroIcon(
                                    HeroIcons.checkCircle,
                                    color: HexColor("#C9F560"),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Text(
                                '1NH20CS000',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor("#303642")),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ))),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text('Edit Profile',
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                  )),
                              Icon(
                                Icons.tune_rounded,
                                size: 20,
                                color: HexColor("#C9F560"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.h,
                            left: 1.w,
                          ),
                          child: Column(
                            children: [
                              Text(
                                '100',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Followers',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.h,
                            left: 1.w,
                          ),
                          child: Column(
                            children: [
                              Text(
                                '20',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Following',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.h,
                            left: 1.w,
                          ),
                          child: Column(
                            children: [
                              Text(
                                '10',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Events',
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        SizedBox(
                          width: 117,
                          height: 35,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 8.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                      top: 1.h,
                      left: 2.w,
                    )),
                    SizedBox(
                      height: 50,
                      width: 100.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Container(
                                  height: 33,
                                  width: 86,
                                  child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          tabIndex = index;
                                        });
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: tabIndex == index
                                            ? MaterialStateProperty.all<Color>(
                                                HexColor("#5E00D4"))
                                            : MaterialStateProperty.all<Color>(
                                                HexColor("#303642")),
                                        foregroundColor: tabIndex == index
                                            ? MaterialStateProperty.all<Color>(
                                                HexColor("#FFFFFF"))
                                            : MaterialStateProperty.all<Color>(
                                                HexColor("#C9F560")),
                                      ),
                                      child: Text(
                                        tabs[index],
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 1.h,
                  left: 3.w,
                ),
                child: tabWidgets[tabIndex]),
          ],
        ),
      ),
    );
  }

  // MaterialStateProperty<Color> getColor(HexColor color, HexColor colorPressed) {
  //   final getColor = (Set<MaterialState> states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return colorPressed;
  //     } else {
  //       return color;
  //     }
  //   };
  //   return MaterialStateProperty.resolveWith(getColor);
  // }
}
