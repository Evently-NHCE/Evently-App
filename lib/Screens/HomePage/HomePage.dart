import 'package:evently/Screens/HomePage/Components/HomePageBody.dart';
import 'package:evently/Utility/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: HexColor("#303642"),
      resizeToAvoidBottomInset: false,
      appBar: appBar(),
      body: HomePageBody(),
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
