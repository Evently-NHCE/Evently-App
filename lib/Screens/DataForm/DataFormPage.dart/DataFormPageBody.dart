import 'package:evently/Model/Authentication.dart';
import 'package:evently/Screens/DataForm/DataFormPage.dart/BranchSelection.dart';
import 'package:evently/Screens/DataForm/DataFormPage.dart/CollegeSelection.dart';
import 'package:evently/Screens/DataForm/DataFormPage.dart/CurrentYear.dart';
import 'package:evently/Screens/DataForm/DataFormPage.dart/GenreSelection.dart';
import 'package:evently/Screens/SignIN/Components/RoundedRectengleTextField.dart';
import 'package:evently/Utility/CustomSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataFormPageBody extends StatefulWidget {
  DataFormPageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<DataFormPageBody> createState() => _DataFormPageBodyState();
}

TextEditingController _phonecontroller = TextEditingController();
TextEditingController _instragamcontroller = TextEditingController();
TextEditingController _githubController = TextEditingController();
Authen authen = Authen();

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
                controller: _phonecontroller,
                icondata: FontAwesomeIcons.phone,
                hintText: "Your Contact Number",
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            SizedBox(
              height: 4.h,
            ),
            RoundedBoxTextField(
                controller: _instragamcontroller,
                icondata: FontAwesomeIcons.instagram,
                hintText: "Instagram Username",
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            SizedBox(
              height: 4.h,
            ),
            RoundedBoxTextField(
                controller: _githubController,
                icondata: FontAwesomeIcons.github,
                hintText: "GitHub Username",
                obscureText: false,
                autocorrect: true,
                enableSuggestions: true),
            SizedBox(
              height: 4.h,
            ),
            GenderDropDownMenu(),
            SizedBox(height: 4.h),
            CollegeSelection(),
            SizedBox(height: 4.h),
            BranchSelection(),
            SizedBox(height: 4.h),
            CurrentYear(),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
              splashColor: HexColor("#8454CE"),
              customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onTap: () {
                if (_githubController.text.isNotEmpty &&
                    _instragamcontroller.text.isNotEmpty &&
                    currentyear!.isNotEmpty &&
                    gender!.isNotEmpty &&
                    college!.isNotEmpty &&
                    branch!.isNotEmpty) {
                  authen.registerUser({
                    "Username": "",
                    "Password": "dhjdfhjdjdjf",
                    "UniqueStudentId": "1NH20CS272",
                    "CollegeName": "New Horizon College of engineering",
                    "BranchName": "CSE",
                    "CurrentYear": "3rd",
                    "ContactNumber": "8707405905",
                    "Email": "Vishwajeet@test.com",
                    "GithubId": "Vishwajeet690"
                  });
                  Navigator.pushNamed(context, '/Navigation');
                } else if (_githubController.text.isEmpty ||
                    _instragamcontroller.text.isEmpty ||
                    currentyear!.isEmpty ||
                    gender!.isEmpty ||
                    college!.isEmpty ||
                    branch!.isEmpty) {
                  var _type = FeedbackType.error;
                  Vibrate.feedback(_type);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(milliseconds: 700),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    content: CustomSnackbr(
                        message: 'Fill All Details',
                        title: 'Some fields are empty',
                        color: Colors.red),
                  ));
                }
              },
              child: Container(
                height: 6.h,
                width: 80.w,
                decoration: BoxDecoration(
                    color: HexColor("#8255CC"),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
          ],
        ),
      ),
    );
  }
}
