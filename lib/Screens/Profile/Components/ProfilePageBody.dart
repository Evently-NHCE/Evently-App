import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 29.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: HexColor("#3D4552"),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2.h,
                      ),
                      child: Text(
                        'Profile',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 254,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 1.w,
                        top: 3.h,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: HeroIcon(
                            HeroIcons.bell,
                            color: HexColor("#C9F560"),
                            solid: true,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor: HexColor("#FEBD06"),
                        radius: 72.17 / 2,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(
                                'Ritika Hirenath',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: HeroIcon(
                                HeroIcons.checkCircle,
                                color: HexColor("#C9F560"),
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Text(
                            '1NH20CS000',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#303642")),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Edit Profile',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                              )),
                          Icon(
                            Icons.tune_rounded,
                            size: 20,
                            color: HexColor("#C9F560"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.h,
                        left: 1.w,
                      ),
                      child: Column(
                        children: [
                          Text(
                            '100',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.h,
                        left: 1.w,
                      ),
                      child: Column(
                        children: [
                          Text(
                            '20',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            'Following',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.h,
                        left: 1.w,
                      ),
                      child: Column(
                        children: [
                          Text(
                            '10',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            'Events',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    SizedBox(
                      width: 117,
                      height: 35,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              top: 1.h,
              left: 2.w,
            )),
            SizedBox(
              height: 33,
              width: 86,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      clicked = !clicked;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: clicked
                        ? MaterialStateProperty.all<Color>(HexColor("#303642"))
                        : MaterialStateProperty.all<Color>(HexColor("#5E00D4")),
                    foregroundColor: clicked
                        ? MaterialStateProperty.all<Color>(HexColor("#C9F560"))
                        : MaterialStateProperty.all<Color>(HexColor("#FFFFFF")),
                  ),
                  child: Text(
                    'About',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            SizedBox(
              width: 15,
            ),
            TextButton(
                onPressed: () {},
                // style: ButtonStyle(
                //   backgroundColor: clicked
                //       ? MaterialStateProperty.all<Color>(HexColor("#303642"))
                //       : MaterialStateProperty.all<Color>(HexColor("#5E00D4")),
                //   foregroundColor: clicked
                //       ? MaterialStateProperty.all<Color>(HexColor("#C9F560"))
                //       : MaterialStateProperty.all<Color>(HexColor("#FFFFFF")),
                // ),
                child: Text(
                  'Badges',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: HexColor("#C9F560"),
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              width: 15,
            ),
            TextButton(
                onPressed: () {},
                // style: ButtonStyle(
                //   backgroundColor: clicked
                //       ? MaterialStateProperty.all<Color>(HexColor("#303642"))
                //       : MaterialStateProperty.all<Color>(HexColor("#5E00D4")),
                //   foregroundColor: clicked
                //       ? MaterialStateProperty.all<Color>(HexColor("#C9F560"))
                //       : MaterialStateProperty.all<Color>(HexColor("#FFFFFF")),
                // ),
                child: Text(
                  'Cetificates',
                  style: GoogleFonts.roboto(
                    color: HexColor("#C9F560"),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              width: 15,
            ),
            TextButton(
                onPressed: () {},
                // style: ButtonStyle(
                //   backgroundColor: clicked
                //       ? MaterialStateProperty.all<Color>(HexColor("#303642"))
                //       : MaterialStateProperty.all<Color>(HexColor("#5E00D4")),
                //   foregroundColor: clicked
                //       ? MaterialStateProperty.all<Color>(HexColor("#C9F560"))
                //       : MaterialStateProperty.all<Color>(HexColor("#FFFFFF")),
                // ),
                child: Text(
                  'Attendance',
                  style: GoogleFonts.roboto(
                    color: HexColor("#C9F560"),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 1.h,
            left: 3.w,
          ),
          child: Column(
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
            ],
          ),
        ),
      ],
    );
  }

  // MaterialStateProperty<Color> getColor(HexColor color, HexColor colorPressed) {
  //   final getColor = (Set<MaterialState> states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return colorPressed;
  //     } else {
  //       return color;
  //     }
  //   };
  //   return MaterialStateProperty.resolveWith(getColor);
  // }
}
