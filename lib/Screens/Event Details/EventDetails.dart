import 'package:evently/Screens/Event%20Details/EventDetailsBody.dart';
import 'package:flutter/material.dart';

class EventDeatils extends StatelessWidget {
  const EventDeatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EventDetailsBody(),
    );
  }
}
