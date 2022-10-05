import 'package:evently/Screens/HomePage/Components/HomePageBody.dart';
import 'package:evently/Utility/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: HexColor("#303642"),
      resizeToAvoidBottomInset: false,
      appBar: appBar('Evently'),
      body: HomePageBody(),
    );
  }
}
