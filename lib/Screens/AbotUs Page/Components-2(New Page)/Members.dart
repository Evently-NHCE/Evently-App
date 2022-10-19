import 'package:evently/Utility/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

final List<Map<String, dynamic>> allUsers = [
  {
    "name": "Ritika Hiremath",
    "designation": "President",
  },
  {
    "name": "Soumyadip",
    "designation": "Vice president",
  },
  {
    "name": "Sanjana Chinta",
    "designation": "Secretary",
  },
  {
    "name": "Shivani Biradar",
    "designation": "Trrasurer",
  },
  {
    "name": "Jumainah",
    "designation": "Member, MD club",
  },
  {
    "name": "Mabud Alam",
    "designation": "Member, MD club",
  },
  {
    "name": "Saif K",
    "designation": "Member, MD club",
  },
  {
    "name": "Varun",
    "designation": "Member, MD club",
  },
  {
    "name": "Harsh",
    "designation": "Developer",
  },
];

class MembersList extends StatelessWidget {
  const MembersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 5.h),
      child: SizedBox(
        height: 45.h,
        width: 100.w,
        child: ListView.builder(
            itemCount: allUsers.length,
            itemBuilder: (context, index) {
              return MemberWidget(
                desig: allUsers[index]['designation'],
                name: allUsers[index]['name'],
              );
            }),
      ),
    );
  }
}

class MemberWidget extends StatelessWidget {
  MemberWidget({
    Key? key,
    required this.name,
    required this.desig,
  }) : super(key: key);

  String name = "";
  String desig = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.h),
      width: 100.w,
      height: 10.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.sp),
          color: AppColors.secondaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 20.sp,
            backgroundColor: AppColors.primaryColor,
            child: Icon(
              Icons.account_circle_outlined,
              color: AppColors.neoncolor,
              size: 20.sp,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 75.w,
                height: 3.h,
                //color: Colors.green,
                child: Text(
                  name,
                  style: GoogleFonts.poppins(
                      color: AppColors.neoncolor,
                      fontSize: 12.sp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 75.w,
                height: 3.h,
                // color: Colors.green,
                child: Text(
                  desig,
                  style: GoogleFonts.poppins(
                      color: AppColors.whiteColor,
                      fontSize: 10.sp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
