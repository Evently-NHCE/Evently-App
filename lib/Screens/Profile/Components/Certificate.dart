import 'package:antdesign_icons/antdesign_icons.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

class CertificateSection extends StatelessWidget {
  //Constructor to get the index of the event
  String eventTitle = "";
  String date = "";
  String backgroundImage = "";
  String location = "";
  String eventHall = "";
  CertificateSection({
    Key? key,
    required this.backgroundImage,
    required this.eventTitle,
    required this.date,
    required this.location,
    required this.eventHall,
    //alll the required parameters
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      //Center widget to center the card
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.h),
        //Padding widget to give some space between the cards
        child: Stack(
          //Stack widget to stack the card and the image and the Event Chip
          children: [
            Container(
              width: 90.w,
              //height and width of the card is set to 90% of the screen width and 40% of the screen height
              decoration: BoxDecoration(
                color: HexColor("#3D4552"),
                //background color of the card
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                //Column widget to stack the widgets vertically
                children: [
                  //Container widget to give the card a background image
                  Container(
                    height: 20.h,
                    width: 100.w,
                    child: ClipRRect(
                        //ClipRRect widget to clip the image to the card
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22.0),
                          topRight: Radius.circular(22.0),
                        ),
                        child: Container(
                          child: Image.asset(
                            backgroundImage,
                            fit: BoxFit.cover,
                            //fit the image to the container
                          ),
                        )),
                  ),
                  SizedBox(height: 2.h),
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
                                  velocity:
                                      Velocity(pixelsPerSecond: Offset(20, 0)),
                                  pauseBetween: Duration(milliseconds: 1000),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(this.date,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("#FFFFFF"),
                                        )),
                                    Text(this.location,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("#FFFFFF"),
                                        )),
                                  ],
                                ),
                              ),
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      backgroundColor: HexColor("#7862F7"),
                                      textStyle: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    Get.snackbar('Downloading...',
                                        '$eventTitle certificate',
                                        snackPosition: SnackPosition.BOTTOM);
                                  },
                                  icon: Icon(AntIcons.cloudDownloadOutlined),
                                  label: Text("Download"))
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
