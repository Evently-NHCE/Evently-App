import 'package:evently/Screens/EventPass/Components/EventPassBody.dart';
import 'package:flutter/material.dart';

class EventPass extends StatelessWidget {
  final String eventTitle;
  final String backgroundImage;
  const EventPass(
      {Key? key, required this.eventTitle, required this.backgroundImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        body: EventPassBody(
            eventTitle: eventTitle, backgroundImage: backgroundImage),
      ),
    );
  }
}
