// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evently/Screens/My%20Events/Components/MyEventBody.dart';
import 'package:evently/Utility/AppBar.dart';
import 'package:flutter/material.dart';

class MyEvent extends StatefulWidget {
  const MyEvent({Key? key}) : super(key: key);

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('My Events'),
      body: MyEventBody(),
    );
  }
}
