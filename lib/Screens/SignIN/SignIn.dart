import 'package:evently/Screens/SignIN/Components/SignInPageBody.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: SignInPageBody(),
    );
  }
}
