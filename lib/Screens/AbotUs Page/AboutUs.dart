import 'package:evently/Screens/AbotUs%20Page/Components-1(Old%20Page)/AboutUsBody.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sizer/sizer.dart';

import '../../Utility/Constants.dart';
import 'Components-2(New Page)/AboutUsPageBody.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.secondaryColor,
        elevation: 0,
        leading: IconButton(
          icon: HeroIcon(HeroIcons.chevronLeft, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "About Us",
          style: GoogleFonts.poppins(
              //   color: Color.fromRGBO(65, 84, 252, 0.44),
              fontSize: 20,
              letterSpacing: 0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: AboutUsPageBody(),
    );
  }
}
