import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
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
                height: 35.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 20.h,
                      width: 90.w,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22.0),
                            topRight: Radius.circular(22.0),
                          ),
                          child: Image.asset(
                            "assets/Images/e1.jpeg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(height: 1.h),
                    SizedBox(
                      width: 90.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          Expanded(
                            child: TextScroll(
                              "Workshop on Flutter",
                              velocity:
                                  Velocity(pixelsPerSecond: Offset(20, 0)),
                              pauseBetween: Duration(milliseconds: 1000),
                              mode: TextScrollMode.bouncing,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                              selectable: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          Expanded(
                            child: TextScroll(
                              "Mobile App Development Club",
                              velocity:
                                  Velocity(pixelsPerSecond: Offset(20, 0)),
                              pauseBetween: Duration(milliseconds: 1000),
                              mode: TextScrollMode.bouncing,
                              style: TextStyle(
                                  color: HexColor("#808999"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.right,
                              selectable: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 2.w,
                          ),
                          Expanded(
                            child: TextScroll(
                              "01:00 PM - 02:00 PM",
                              velocity:
                                  Velocity(pixelsPerSecond: Offset(20, 0)),
                              pauseBetween: Duration(milliseconds: 1000),
                              mode: TextScrollMode.bouncing,
                              style: TextStyle(
                                  color: HexColor("#808999"),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.right,
                              selectable: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Positioned(
                top: 16.h,
                left: 70.w,
                child: Card(
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                       color: Colors.white,
                    ),
                   
                    height: 6.h,
                    width: 15.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "08",
                          style:
                              TextStyle(color: kTextPurplecolor, fontSize: 12,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "June",
                          style:
                              TextStyle(color: kTextPurplecolor, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
