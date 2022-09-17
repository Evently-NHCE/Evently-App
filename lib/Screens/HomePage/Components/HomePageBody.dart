import 'package:evently/Screens/HomePage/Components/BuildAppbar.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:evently/Widgets/EventCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<String> searchList = [
    "MD Club",
    "IEEE",
    "CODECHEF",
    "Leo Club",
    "Media Club",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 5.h),
        child: Column(
          children: [
            HomeAppBar(),
            SizedBox(height: 2.h),
            buildsearchbar(),
            buildSerchChips(),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Popular Events",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            buildPopularEvents(),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Upcoming Events",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            buildPopularEvents(),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

  Widget buildPopularEvents() {
    return Container(
      height: 32.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return EventCard();
        },
      ),
    );
  }

  Widget buildSerchChips() {
    return Container(
      height: 8.h,
      margin: const EdgeInsets.only(top: 8),
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: searchList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              child: ActionChip(
                //   labelPadding: EdgeInsets.all(2.0),

                label: Text(searchList[index],
                    style: GoogleFonts.chivo(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none)),

                backgroundColor: HexColor("#C9F560"),
                elevation: 1.0, onPressed: () {},
              ),
            );
          }),
    );
  }

  Widget buildsearchbar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kNavbarcolour,
      ),
      child: TextField(
        style: TextStyle(color: kWhiteColor),
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: HexColor("#808999")),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: HexColor("#808999"),
            size: 30,
          ),
        ),
      ),
    );
  }
}
