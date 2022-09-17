import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

class EventCard extends StatefulWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
                height: 28.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 17.5.h,
                      width: 80.w,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22.0),
                            topRight: Radius.circular(22.0),
                          ),
                          child: Image.asset(
                            "assets/images/bg.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(height: 3.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Expanded(
                                  child: TextScroll(
                                    "Code-a-Pookkalam",
                                    velocity: Velocity(
                                        pixelsPerSecond: Offset(20, 0)),
                                    pauseBetween: Duration(milliseconds: 1000),
                                    mode: TextScrollMode.bouncing,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                    selectable: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.4.h),
                          SizedBox(
                            width: 80.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                HeroIcon(HeroIcons.clock),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Expanded(
                                  child: TextScroll(
                                    "01:00 PM - 02:00 PM",
                                    velocity: Velocity(
                                        pixelsPerSecond: Offset(20, 0)),
                                    pauseBetween: Duration(milliseconds: 1000),
                                    mode: TextScrollMode.bouncing,
                                    style: TextStyle(
                                        color: HexColor("#808999"),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.right,
                                    selectable: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 14.h,
                left: 2.w,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  elevation: 5,
                  shadowColor: HexColor("#808999"),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: HexColor("#7862F7"),
                    ),
                    height: 5.h,
                    width: 5.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "08",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "June",
                          style: TextStyle(color: kWhiteColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 16.h,
                left: 58.w,
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#C9F560"),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    height: 25,
                    width: 80,
                    child: Center(
                        child: Text(
                      'MD Club',
                      style: GoogleFonts.chivo(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  ),
                ))
          ],
        ));
  }
}
