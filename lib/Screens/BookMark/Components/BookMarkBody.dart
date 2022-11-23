import 'package:evently/Screens/BookMark/Components/BookMarkCard.dart';
import 'package:evently/controllers/BookmarkController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BookMarkBody extends StatefulWidget {
  const BookMarkBody({Key? key}) : super(key: key);

  @override
  State<BookMarkBody> createState() => _BookMarkBodyState();
}

class _BookMarkBodyState extends State<BookMarkBody> {
  final BookmarkController bookmarkController = Get.put(BookmarkController());
  @override
  Widget build(BuildContext context) {
    int length = bookmarkController.bookmarks.length;
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.h),
        child: length != 0
            ? ListView.builder(
                itemCount: length,
                itemBuilder: (context, index) {
                  return BookMarkCard(
                      index: index,
                      onTap: () {
                        setState(() {
                          bookmarkController.bookmarks.removeAt(index);
                        });
                      });
                },
              )
            : Center(
                child: Text(
                'You have no bookmarks :(',
                style: GoogleFonts.chivo(
                    color: Colors.white, fontWeight: FontWeight.w400),
              )),
      ),
    );
  }
}
