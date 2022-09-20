import 'package:evently/Screens/EventPass/Components/EventPassBody.dart';
import 'package:flutter/material.dart';

class EventPass extends StatelessWidget {
  const EventPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: EventPassBody(),
    );
  }
}
