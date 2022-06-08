import 'package:evently/Screens/DataForm/DataFormPage.dart/GenreSelection.dart';
import 'package:evently/Screens/SignIN/Components/RoundedRectengleTextField.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataFormPageBody extends StatefulWidget {
  const DataFormPageBody({Key? key}) : super(key: key);

  @override
  State<DataFormPageBody> createState() => _DataFormPageBodyState();
}

class _DataFormPageBodyState extends State<DataFormPageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 15.h, left: 4.w, right: 4.w),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Lets get to know you better.',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Please fill in the details below.',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#7E7E84"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            RoundedBoxTextField(
                icondata: FontAwesomeIcons.instagram,
                hintText: "Instagram Username",
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            SizedBox(
              height: 4.h,
            ),
            RoundedBoxTextField(
                icondata: FontAwesomeIcons.github,
                hintText: "GitHub Username",
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            SizedBox(
              height: 4.h,
            ),
            GenderDropDownMenu()
          ],
        ),
      ),
    );
  }
}
