import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class ProfileCard extends StatefulWidget {
  final UserInfo? userInfo;

  const ProfileCard({Key? key, this.userInfo}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    UserInfo userInfo = widget.userInfo!;
    return Container(
      height: 20.h,
      width: 100.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        color: HexColor("#3D4552"),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Profile',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(NotificationsPage());
                    },
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: HexColor("#FEBD06"),
                        foregroundImage: AssetImage('assets/Icons/dp.png'),
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
                                userInfo.name,
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
                            userInfo.usn,
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
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(HexColor("#303642")),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
              height: 20,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(
            //         top: 1.h,
            //         left: 1.w,
            //       ),
            //       child: Column(
            //         children: [
            //           Text(
            //             '100',
            //             style: GoogleFonts.roboto(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 25,
            //             ),
            //           ),
            //           Text(
            //             'Followers',
            //             style: GoogleFonts.roboto(
            //               color: HexColor("#F8F8F8"),
            //               fontSize: 12,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(
            //         top: 1.h,
            //         left: 1.w,
            //       ),
            //       child: Column(
            //         children: [
            //           Text(
            //             '20',
            //             style: GoogleFonts.roboto(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 25,
            //             ),
            //           ),
            //           Text(
            //             'Following',
            //             style: GoogleFonts.roboto(
            //               color: HexColor("#F8F8F8"),
            //               fontSize: 12,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(
            //         top: 1.h,
            //         left: 1.w,
            //       ),
            //       child: Column(
            //         children: [
            //           Text(
            //             '10',
            //             style: GoogleFonts.roboto(
            //               color: HexColor("#F8F8F8"),
            //               fontWeight: FontWeight.bold,
            //               fontSize: 25,
            //             ),
            //           ),
            //           Text(
            //             'Events',
            //             style: GoogleFonts.roboto(
            //               color: Colors.white,
            //               fontSize: 12,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(
            //       width: 32,
            //     ),
            //     SizedBox(
            //       width: 117,
            //       height: 35,
            //       child: TextButton(
            //         onPressed: () {},
            //         child: Text(
            //           'Follow',
            //           style: TextStyle(
            //             fontSize: 17,
            //           ),
            //         ),
            //         style: ButtonStyle(
            //           backgroundColor:
            //               MaterialStateProperty.all<Color>(Colors.white),
            //           foregroundColor:
            //               MaterialStateProperty.all<Color>(Colors.black),
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(18.0),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
