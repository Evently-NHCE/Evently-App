import 'package:evently/Screens/Event%20Details/EventDetailsBody.dart';
import 'package:flutter/material.dart';

class EventDeatils extends StatelessWidget {
  final String eventName;
  final String banner;
  const EventDeatils({Key? key, required this.eventName, required this.banner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EventDetailsBody(
          eventName: eventName,
          banner: banner,
        ),
      ),
    );
  }
}
