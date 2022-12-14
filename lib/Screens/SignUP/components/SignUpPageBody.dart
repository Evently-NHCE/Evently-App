import 'package:blobs/blobs.dart';
import 'package:evently/Model/UserInfo.dart';
import 'package:evently/Screens/SignIN/Components/RoundedIconButton.dart';
import 'package:evently/Screens/SignIN/Components/RoundedRectengleTextField.dart';
import 'package:evently/controllers/UserController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../../Utility/CustomSnackBar.dart';

class SignUPPageBody extends StatelessWidget {
  SignUPPageBody({Key? key}) : super(key: key);

  static String usn = "";
  static String name = "";
  static String email = " ";
  static String password = " ";

  TextEditingController usnControlller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final UserController userController =
      Get.put(UserController(), permanent: false);
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 73.h,
          left: 34.w,
          child: Blob.animatedRandom(
            size: 400,
            styles: BlobStyles(
              color: HexColor("#8255CC"),
              fillType: BlobFillType.fill,
              strokeWidth: 3,
            ),
            edgesCount: 5,
            minGrowth: 4,
            loop: true,
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 15.h, left: 4.w, right: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up.',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                RoundedBoxTextField(
                  controller: usnControlller,
                  obscureText: false,
                  enableSuggestions: true,
                  autocorrect: true,
                  hintText: "USN",
                  icondata: Icons.account_circle,
                ),
                SizedBox(
                  height: 3.h,
                ),
                RoundedBoxTextField(
                  controller: nameController,
                  obscureText: false,
                  enableSuggestions: true,
                  autocorrect: true,
                  hintText: "Name",
                  icondata: Icons.account_circle,
                ),
                SizedBox(
                  height: 3.h,
                ),
                RoundedBoxTextField(
                  controller: emailControler,
                  obscureText: false,
                  enableSuggestions: true,
                  autocorrect: true,
                  hintText: "Email",
                  icondata: Icons.email_rounded,
                ),
                SizedBox(
                  height: 3.h,
                ),
                RoundedBoxTextField(
                  controller: passwordController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  hintText: "Password",
                  icondata: Icons.lock,
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                    splashColor: HexColor("#8454CE"),
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onTap: () async {
                      if (emailControler.text.isEmpty ||
                          passwordController.text.isEmpty ||
                          usnControlller.text.isEmpty ||
                          nameController.text.isEmpty) {
                        var _type = FeedbackType.error;
                        Vibrate.feedback(_type);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          content: CustomSnackbr(
                            title: "Fill all the fields",
                            message: '',
                            color: Colors.red,
                          ),
                        ));
                      } else {
                        if (usnControlller.text.contains("1NH")) {
                          if (emailControler.text.contains("@gmail.com")) {
                            usn = usnControlller.text;
                            name = nameController.text;
                            email = emailControler.text;
                            password = passwordController.text;

                            // Storing the data in the controller to access it from
                            // the next screen and add it all together in a variable of
                            // type UserInfo
                            UserInfo userInfo = UserInfo(
                                usn: usn,
                                name: name,
                                emaild: email,
                                password: password);
                            userController.setUserInfo(userInfo);

                            var _type = FeedbackType.selection;
                            Vibrate.feedback(_type);
                            Navigator.pushNamed(context, '/DataForm');

                            //store the data in shared preferences

                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setString("usn", usn.toString());
                            prefs.setString("pass", password.toString());
                            prefs.setString("name", name.toString());

                            ///////////////
                          } else {
                            var _type = FeedbackType.error;
                            Vibrate.feedback(_type);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              content: CustomSnackbr(
                                title: "Enter a Valid Email Address",
                                message: '',
                                color: Colors.red,
                              ),
                            ));
                          }
                        } else {
                          var _type = FeedbackType.error;
                          Vibrate.feedback(_type);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            content: CustomSnackbr(
                              title: "Enter a Valid USN",
                              message: 'ex: 1NH12CS001',
                              color: Colors.red,
                            ),
                          ));
                        }
                      }
                      ;
                    },
                    child: RoundedIconButton(
                      hinttext: "Sign Up",
                    )),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#7E7E84")),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/SignIn");
                        var _type = FeedbackType.selection;
                        Vibrate.feedback(_type);
                      },
                      child: Text(
                        'Sign In Instead',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 80.h,
          right: 60.w,
          child: Blob.animatedRandom(
            size: 300,
            styles: BlobStyles(
              color: HexColor("#8255CC"),
              fillType: BlobFillType.fill,
              strokeWidth: 3,
            ),
            edgesCount: 5,
            minGrowth: 4,
            loop: true,
          ),
        ),
      ],
    );
  }
}
