// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import 'Components/MyEventsCard.dart';

class MyEventBody extends StatefulWidget {
  const MyEventBody({Key? key}) : super(key: key);

  @override
  State<MyEventBody> createState() => _MyEventBodyState();
}
//List of event titles,dates,background images,time,location and event hall
//List<String> because we are using the same index for all the lists

List<String> eventTitles = [
  "Code-a-Pookkalam",
  "IEEEE",
  "MD CLub Hack",
  "Drama Club"
];
List<String> dates = [
  "Sat,Feb 20,2022",
  "Sat,Feb 20,2022",
  "Sat,Feb 20,2022",
  "Sat,Feb 20,2022"
];
List<String> times = [
  "12:00 AM - 2:00 PM",
  "12:00 AM - 2:00 PM",
  "12:00 AM - 2:00 PM",
  "12:00 AM - 2:00 PM"
];
List<String> locations = ["NHCE", "NHCE", "NHCE", "NHCE"];
List<String> EventHall = [
  "Falconry, CSE Department,Second Floor",
  "Falconry, CSE Department,Second Floor",
  "Falconry, CSE Department,Second Floor",
  "Falconry, CSE Department,Second Floor"
];
List<String> assetpaths = [
  "assets/Images/e2.jpeg",
  "assets/Images/e2.jpeg",
  "assets/Images/e2.jpeg",
  "assets/Images/e2.jpeg",
];

class _MyEventBodyState extends State<MyEventBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "My Events",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h),
        //left:3.w means 3% of the screen width from left and right:3.w means 3% of the screen width from right and top:2.h means 2% of the screen height from top
        child: ListView.builder(
          //ListView.builder is used to create a list of widgets
          //First I created a MyEventCard widgets and then used ListView.builder to create a list of widgets
          physics: BouncingScrollPhysics(),
          itemCount: assetpaths.length,
          //item count is the number of widgets in the list ex- lenght of the List<String> assetpaths
          itemBuilder: (context, index) => MyEventsCard(
            //itemBuilder is used to create a widget for each index
            //itemBuilder is a function which takes context and index as parameters
            //index is the index of the widget in the list
            //context is the context of the widget

            eventTitle: eventTitles[index],
            date: dates[index],
            time: times[index],
            location: locations[index],
            eventHall: EventHall[index],
            backgroundImage: assetpaths[index],

            //Here we are using the same index for all the lists
          ),
        ),
      ),
    );
  }
}
