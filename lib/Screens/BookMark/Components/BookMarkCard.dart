import 'package:evently/Screens/BookMark/Components/ListTile.dart';
import 'package:evently/controllers/BookmarkController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';

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
    return Column(
      children: [
        Material(
          elevation: 5,
          borderRadius: borderRadius,
          child: Container(
            width: 100.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: HexColor("#3D4552"),
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 14.h,
                    width: 28.w,
                    margin: EdgeInsets.zero,
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
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(bookmarks[index]['title'],
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      ListTileCard(ListTileType.date, bookmarks[index]),
                      SizedBox(
                        height: 20,
                      ),
                      ListTileCard(ListTileType.location, bookmarks[index]),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onTap: () {
                            print('removing ${index}');

                            widget.onTap();
                          },
                          child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                'assets/Icons/unsave.png',
                                fit: BoxFit.fitHeight,
                              )),
                        ),
                      ),
                      Container(
                        height: 21,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: expired
                                ? Colors.redAccent
                                : HexColor("#C9F560"),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          expired ? 'Expired' : 'Active',
                          style: GoogleFonts.chivo(
                              color: expired ? Colors.white : Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
