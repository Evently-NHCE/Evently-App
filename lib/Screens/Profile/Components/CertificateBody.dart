import 'package:evently/Screens/Profile/Components/Certificate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CertificatePageBody extends StatelessWidget {
  CertificatePageBody({Key? key}) : super(key: key);
  List<String> evemtTitles = [
    "Hacktoberfest",
    "Md Club",
    "IEEE Xtream",
    "Drama Club Event"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 40.h,
        child: ListView.builder(
            itemCount: evemtTitles.length,
            itemBuilder: ((context, index) {
              return CertificateSection(
                  backgroundImage: "assets/Images/bg.png",
                  eventTitle: evemtTitles[index],
                  date: "Sat,Feb 20,2022",
                  location: "NHCE",
                  eventHall: "eventHall");
            })),
      ),
    );
  }
}
