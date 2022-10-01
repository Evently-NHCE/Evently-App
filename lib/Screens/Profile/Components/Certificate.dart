import 'package:flutter/material.dart';
import 'package:evently/Screens/HomePage/HomePage.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

class CertificateSection extends StatefulWidget {
  const CertificateSection({Key? key}) : super(key: key);

  @override
  State<CertificateSection> createState() => _CertificateSectionState();
}

class _CertificateSectionState extends State<CertificateSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Stack(
        children: [
          Container(
              height: 36.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: HexColor("#3D4552"),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  Container(
                    height: 20.h,
                    width: 100.w,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22.0),
                          topRight: Radius.circular(22.0),
                        ),
                        child: Image.asset(
                          "assets/Images/e4.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 80.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: TextScroll(
                                  "Code-a-Pookkalam",
                                  velocity:
                                      Velocity(pixelsPerSecond: Offset(20, 0)),
                                  pauseBetween: Duration(milliseconds: 1000),
                                  mode: TextScrollMode.bouncing,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                  selectable: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 0.4.h),
                        SizedBox(
                          width: 80.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                height: 5.h,
                                width: 10.w,
                                margin: EdgeInsets.only(right: 1.w),
                                decoration: BoxDecoration(
                                  color: HexColor("#303642"),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: HeroIcon(
                                    HeroIcons.calendar,
                                    color: HexColor("#C9F560"),
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Expanded(
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Sat,Feb 20,2022",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: HexColor("#FFFFFF"),
                                        )),
                                    Text(
                                      "12:00 AM - 2:00 PM",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: HexColor("#969696"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        SizedBox(height: 0.4.h),
                        SizedBox(
                          width: 80.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 2.w,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  )
                ],
              )),
          Positioned(
              top: 14.h,
              left: 2.w,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                elevation: 5,
                shadowColor: HexColor("#808999"),
              )),
        ],
      ),
    );
  }
}
