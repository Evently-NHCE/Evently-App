import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Hello. My name is Sanjana working as UI/UX designer. The user interactive UI design will help you and your website or app to convert the visitor to real customers and that will help you to make great revenue for your business...',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: -0.025,
            height: 1.5,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          'General',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#3D4552")),
              child: HeroIcon(
                HeroIcons.academicCap,
                color: HexColor("#C9F560"),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Computer Science Engineering',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'B.E',
                  style: GoogleFonts.poppins(
                    color: HexColor("#969696"),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#3D4552")),
              child: HeroIcon(
                HeroIcons.calendar,
                color: HexColor("#C9F560"),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'Admitted in 2022',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor("#3D4552")),
              child: HeroIcon(
                HeroIcons.identification,
                color: HexColor("#C9F560"),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              '1NH20CS188',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Social',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              height: 47,
              width: 157,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        HexColor("#72FC41").withOpacity(0.53)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.whatsapp,
                      color: HexColor("#1FDC00"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Whatsapp',
                      style: GoogleFonts.chivo(
                        color: Colors.white,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 35,
            ),
            SizedBox(
              height: 47,
              width: 157,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      HexColor("#F047FF").withOpacity(0.44),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.instagram,
                      color: HexColor("#F047FF"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Instagram',
                      style: GoogleFonts.chivo(
                        color: Colors.white,
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 47,
          width: 157,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  HexColor("#4154FC").withOpacity(0.53)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: HexColor("#4154FC"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'LinkedIn',
                  style: GoogleFonts.chivo(
                    color: Colors.white,
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
