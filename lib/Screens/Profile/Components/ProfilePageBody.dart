import 'package:evently/Model/UserInfo.dart';
import 'package:evently/Screens/Profile/Components/About.dart';
import 'package:evently/Screens/Profile/Components/Attendance.dart';
import 'package:evently/Screens/Profile/Components/Badges.dart';
import 'package:evently/Screens/Profile/Components/ProfileCard.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import 'CertificateBody.dart';

class ProfilePageBody extends StatefulWidget {
  final UserInfo? userInfo;
  const ProfilePageBody({Key? key, this.userInfo}) : super(key: key);

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  int tabIndex = 0;
  List<String> tabs = ['About', 'Badges', 'Certificates', 'Attendance'];
  List tabWidgets = [
    AboutSection(),
    BadgesSection(),
    CertificatePageBody(),
    AttendanceSection()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileCard(userInfo: widget.userInfo),
          Padding(
            padding: EdgeInsets.fromLTRB(
              8,
              5,
              8,
              8,
            ),
            child: Container(
              height: 8.h,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
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
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: tabWidgets[tabIndex],
            ),
          ),
        ],
      ),
    );
  }
}
