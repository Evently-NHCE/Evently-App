import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

class BookMarkCard extends StatelessWidget {
  //Constructor to get the index of the event
  String eventTitle = "";
  String date = "";
  String backgroundImage = "";
  String time = "";
  String eventHall = "";
  BookMarkCard({
    Key? key,
    required this.backgroundImage,
    required this.eventTitle,
    required this.date,
    required this.time,
    required this.eventHall,
    //alll the required parameters
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        //Center widget to center the card
        child: Padding(
          padding: EdgeInsets.only(bottom: 3.h),
          //Padding widget to give some space between the cards
          child: Stack(
            //Stack widget to stack the card and the image and the Event Chip
            children: [
              Positioned(
                child: Container(
                  height: 25.h,
                  width: 90.w,
                  //height and width of the card is set to 90% of the screen width and 40% of the screen height
                  decoration: BoxDecoration(
                    color: HexColor("#3D4552"),
                    //background color of the card
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.0),
                        bottomLeft: Radius.circular(22.0)),
                  ),
                  child: Column(
                    //Column widget to stack the widgets vertically
                    children: [
                      //Container widget to give the card a background image
                      Container(
                        height: 1.h,
                        width: 90.w,
                        child: ClipRRect(
                          //ClipRRect widget to clip the image to the card
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22.0),
                            bottomLeft: Radius.circular(22.0),
                          ),
                        ),
                      ),

                      //SizedBox widget to give some space between the image and the text
                      Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        //Padding widget to give some space between the left edge of the card and the text
                        child: Column(
                          //Column widget to stack the widgets vertically
                          children: [
                            SizedBox(
                              width: 80.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: TextScroll(
                                      //TextScroll widget to scroll the text
                                      this.eventTitle,
                                      velocity: Velocity(
                                          pixelsPerSecond: Offset(20, 0)),
                                      pauseBetween:
                                          Duration(milliseconds: 1000),
                                      mode: TextScrollMode.bouncing,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                      selectable: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h),
                            //SizedBox widget to give some space between the text and the date
                            SizedBox(
                              width: 80.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 10.w,
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      color: HexColor("#303642"),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: HeroIcon(
                                        HeroIcons.calendar,
                                        color: HexColor("#C9F560"),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(this.date,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: HexColor("#FFFFFF"),
                                            )),
                                        Text(
                                          this.time,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: HexColor("#969696"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h),
                            SizedBox(
                              width: 80.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 10.w,
                                    margin: EdgeInsets.only(right: 1.w),
                                    decoration: BoxDecoration(
                                      color: HexColor("#303642"),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: HeroIcon(
                                        HeroIcons.map,
                                        color: HexColor("#C9F560"),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          this.eventHall,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: HexColor("#969696"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // Positioned(
                                //     //Positioned widget to position the Event Chip
                                //     right: 5.w,
                                //     left: 85.w,
                                //     bottom: 10.h,
                                //     //right and bottom are set to 5% of the screen width and 18% of the screen height respectively
                                //     //to position the chip at the top right corner of the card
                                //     child: Material(
                                //       //Material widget to give the chip a shadow
                                //       elevation: 3,
                                //       borderRadius: BorderRadius.circular(13),
                                //       child: Container(
                                //         decoration: BoxDecoration(
                                //           color: HexColor("#C9F560"),
                                //           borderRadius:
                                //               BorderRadius.circular(13),
                                //         ),
                                //         height: 21,
                                //         width: 52,
                                //         child: Center(
                                //             child: Text(
                                //           'Active',
                                //           style: GoogleFonts.chivo(
                                //             color: Colors.black,
                                //             fontSize: 14,
                                //             fontWeight: FontWeight.w400,
                                //           ),
                                //         )),
                                //       ),
                                //     )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 0,
                child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/Images/bg.png"),
                            )))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
