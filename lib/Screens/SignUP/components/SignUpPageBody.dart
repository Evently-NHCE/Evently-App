import 'package:blobs/blobs.dart';
import 'package:evently/Screens/SignIN/Components/RoundedIconButton.dart';
import 'package:evently/Screens/SignIN/Components/RoundedRectengleTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class SignUPPageBody extends StatelessWidget {
  const SignUPPageBody({Key? key}) : super(key: key);

  @override
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
                    onTap: () {
                      var _type = FeedbackType.selection;
                      Vibrate.feedback(_type);
                      Navigator.pushNamed(context, '/DataForm');
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
