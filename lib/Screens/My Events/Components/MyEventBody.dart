import 'package:evently/Screens/My%20Events/Components/MyEventsCard.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyEventBody extends StatefulWidget {
  const MyEventBody({Key? key}) : super(key: key);

  @override
  State<MyEventBody> createState() => _MyEventBodyState();
}

class _MyEventBodyState extends State<MyEventBody> {
  //List of event titles,dates,background images,time,location and event hall
//List<String> because we are using the same index for all the lists

  List<String> eventTitles = [
    "Competitive Programming",
    "HACKZON",
  ];
  List<String> dates = [
    "Sat,Feb 20,2022",
    "Sat,Feb 20,2022",
  ];
  List<String> times = [
    "12:00 AM - 2:00 PM",
    "1:00 PM - 4:00 PM",
  ];
  List<String> locations = ["NHCE", "NHCE", "NHCE", "NHCE"];
  List<String> EventHall = [
    "Falconry, CSE Department,Second Floor",
    "Falconry, CSE Department,Second Floor",
  ];
  List<String> assetpaths = [
    "assets/Images/events/event2.jpeg",
    "assets/Images/events/event3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
