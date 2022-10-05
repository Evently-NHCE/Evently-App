import 'package:evently/Screens/BookMark/Components/ListTile.dart';
import 'package:evently/Widgets/CircleIcons.dart';
import 'package:evently/controllers/BookmarkController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

import '../../../Utility/Constants.dart';

class BookMarkCard extends StatefulWidget {
  final Function() onTap;
  int index;

  BookMarkCard({Key? key, required this.onTap, required this.index})
      : super(key: key);

  @override
  State<BookMarkCard> createState() => _BookMarkCardState();
}

class _BookMarkCardState extends State<BookMarkCard> {
  BorderRadius borderRadius = BorderRadius.only(
      bottomLeft: Radius.circular(15), topLeft: Radius.circular(15));

  @override
  Widget build(BuildContext context) {
    int index = widget.index;
    final BookmarkController bookmarkController = Get.put(BookmarkController());
    List bookmarks = bookmarkController.bookmarks;
    bool expired = bookmarks[index]['expired'];
    return Container(
      margin: EdgeInsets.only(
        bottom: 2.h,
        left: 3.w,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: HexColor("#000000"),
            spreadRadius: 0.2,
            blurRadius: 8,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        color: HexColor("#3D4552"),
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 15.h,
                  width: 28.w,
                  margin: EdgeInsets.only(top: 3.h),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: HexColor("#000000").withOpacity(0.2),
                        spreadRadius: 0.2,
                        blurRadius: 8,
                        offset: Offset(2, 4), // changes position of shadow
                      ),
                    ],
                    //color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FittedBox(
                    child: Image.asset(
                      'assets/Images/bookmarkImg.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(bookmarks[index]['title'],
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    Container(
                      child: Row(
                        children: [
                          CircleIcons(icon: HeroIcons.calendar),
                          SizedBox(
                            width: 2.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bookmarks[index]["date"],
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                bookmarks[index]["time"],
                                style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      child: Row(
                        children: [
                          CircleIcons(icon: HeroIcons.mapPin),
                          SizedBox(
                            width: 2.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 40.w,
                                child: Text(
                                  bookmarks[index]["location"],
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          // print('removing ${index}');

                          widget.onTap();
                        },
                        child: Container(
                          height: 5.h,
                          width: 10.w,
                          decoration: BoxDecoration(
                              color: HexColor("#303642"),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: HeroIcon(
                              HeroIcons.bookmarkSlash,

                              size: 20,
                              // solid: false,
                              color: AppColors.neoncolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Chip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor:
                      expired ? Colors.redAccent : HexColor("#C9F560"),
                  label: Text(
                    expired ? 'Expired' : 'Active',
                    style: GoogleFonts.chivo(
                        color: expired ? Colors.white : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
