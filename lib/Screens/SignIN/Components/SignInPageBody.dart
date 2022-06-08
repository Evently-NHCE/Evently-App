import 'package:blobs/blobs.dart';
import 'package:evently/Screens/SignIN/Components/RoundedRectengleTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import 'RoundedIconButton.dart';

class SignInPageBody extends StatelessWidget {
  const SignInPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 70.h,
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
            padding: EdgeInsets.only(top: 20.h, left: 4.w, right: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In.',
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                RoundedBoxTextField(
                  obscureText: false,
                  enableSuggestions: true,
                  autocorrect: true,
                  hintText: "USN",
                  icondata: Icons.account_circle,
                ),
                SizedBox(
                  height: 5.h,
                ),
                RoundedBoxTextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  hintText: "Password",
                  icondata: Icons.lock,
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                  splashColor: HexColor("#8454CE"),
                  customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onTap: () {
                    var _type = FeedbackType.selection;
                    Vibrate.feedback(_type);
                    Navigator.pushNamed(context, '/SignUp');
                  },
                  child: RoundedIconButton(
                    hinttext: "Sign In",
                  
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an account ?',
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
                        var _type = FeedbackType.selection;
                        Vibrate.feedback(_type);
                        Navigator.pushNamed(context, "/SignUp");
                      },
                      child: Text(
                        'Create account',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
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
