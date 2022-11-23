import 'dart:ui';

import 'package:evently/Utility/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

///this is the notification page
class NotificationsPage extends StatelessWidget {
  NotificationsPage({Key? key}) : super(key: key);

  List clubs = [
    {"name": "MD Club", "created": "2h ago"},
    {"name": "IEEE", "created": "3h ago"},
    {"name": "Drama Club", "created": "4h ago"},
    {"name": "Art Club", "created": "3h ago"},
    {"name": "BIT Club", "created": "2h ago"},
    {"name": "Edge Case Hunters", "created": "3h ago"},
  ];
  List old_clubs = [
    {"name": "MD Club", "created": "2 days ago"},
    {"name": "IEEE", "created": "3 days ago"},
    {"name": "Drama Club", "created": "4 days ago"},
    {"name": "Art Club", "created": "3 days ago"},
    {"name": "BIT Club", "created": "4 days ago"},
    {"name": "Edge Case Hunters", "created": "4 days ago"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                Icons.chevron_left,
                color: AppColors.neoncolor,
                size: 40,
              ),
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: GoogleFonts.poppins(
              //   color: Color.fromRGBO(65, 84, 252, 0.44),
              fontSize: 20,
              letterSpacing: 0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Mark_All_as_read(
            title: "TODAY",
            isClear: true,
          ),
          for (int i = 0; i < 4; i++)
            NotificationTile(
                clubName: clubs[i]['name'], createdTime: clubs[i]['created']),
          Mark_All_as_read(
            title: "OLDER",
            isClear: false,
          ),
          for (int i = 0; i < old_clubs.length; i++)
            NotificationTile(
                clubName: old_clubs[i]['name'],
                createdTime: old_clubs[i]['created'])
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String clubName;
  final String createdTime;
  const NotificationTile({
    Key? key,
    required this.clubName,
    required this.createdTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/Images/MDCLUB_LOGO.png", height: 6.h),
          SizedBox(
            width: 4.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    clubName,
                    style: TextStyle(
                        color: AppColors.neoncolor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "announced a new event",
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 60.w,
                    child: Text(
                      "lorem episumlorem episumlorem episumlorem episumlorem ",
                      maxLines: 2,
                      style: TextStyle(color: HexColor("#969696")),
                    ),
                  ),
                  Container(
                    width: 20.w,
                    child: Text(
                      createdTime,
                      maxLines: 2,
                      style: TextStyle(color: AppColors.neoncolor),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Mark_All_as_read extends StatelessWidget {
  final String title;
  final bool isClear;
  Mark_All_as_read({
    Key? key,
    required this.title,
    required this.isClear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 100.w,
      color: AppColors.secondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(color: AppColors.neoncolor),
            ),
            isClear
                ? SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.check, color: AppColors.neoncolor),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Mark all as read ",
                          style: TextStyle(color: AppColors.neoncolor),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
