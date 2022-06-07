import 'package:evently/Screens/SignUP/components/SignUpPageBody.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: SignUPPageBody(),
    );
  }
}
