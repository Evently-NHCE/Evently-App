// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

import 'package:sizer/sizer.dart';

import '../../Utility/Constants.dart';
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
      appBar: appBar(),
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

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: InkWell(
        onTap: () {},
        child: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/Icons/hamburger.png")),
      ),
      title: Text(
        "Evently",
        style: GoogleFonts.nunito(
            //   color: Color.fromRGBO(65, 84, 252, 0.44),
            fontSize: 26,
            letterSpacing: 1,
            fontWeight: FontWeight.w600),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: InkWell(
              onTap: () async {},
              child: Container(
                height: 5.h,
                width: 10.w,
                decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: HeroIcon(
                    HeroIcons.bell,
                    size: 10,
                    solid: true,
                    color: AppColors.neoncolor,
                  ),
                ),
              )),
        ),
        SizedBox(
          width: 4.w,
        )
      ],
    );
  }
}
