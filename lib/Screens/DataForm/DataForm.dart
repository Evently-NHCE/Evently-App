import 'package:evently/Screens/DataForm/DataFormPage.dart/DataFormPageBody.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';

class DataForm extends StatelessWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: DataFormPageBody(),
    );
  }
}
