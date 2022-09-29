import 'package:flutter/material.dart';

class AttendanceSection extends StatefulWidget {
  const AttendanceSection({Key? key}) : super(key: key);

  @override
  State<AttendanceSection> createState() => _AttendanceSectionState();
}

class _AttendanceSectionState extends State<AttendanceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Attendance',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
