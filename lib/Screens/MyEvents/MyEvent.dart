import 'package:evently/Screens/MyEvents/Components/MyEventBody.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyEvent extends StatelessWidget {
  const MyEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: MyEventBody(),
    );
  }
}
