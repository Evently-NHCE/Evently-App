import 'dart:ui';

import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

final List<String> dates = [
  '1st Year',
  '2nd Year',
  '3rd Year',
  '4th Year',
];

class CurrentYear extends StatefulWidget {
  const CurrentYear({Key? key}) : super(key: key);

  @override
  State<CurrentYear> createState() => _CurrentYearState();
}
  String? currentyear = '';
  bool _selected = false;
class _CurrentYearState extends State<CurrentYear> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: kNavbarcolour,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
              underline: SizedBox(),
              dropdownColor: kNavbarcolour,
              isExpanded: true,
              alignment: Alignment.bottomCenter,
              icon: Image.asset("assets/Icons/DownArrow.png"),
              iconSize: 30,
              hint: _selected
                  ? Text(
                      currentyear.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#808999")),
                    )
                  : Text(
                      "Your current year of college",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: HexColor("#808999")),
                    ),
              borderRadius: BorderRadius.circular(10),
              menuMaxHeight: 200,
              onChanged: (String? val) {
                _selected = true;
                var _type = FeedbackType.selection;
                Vibrate.feedback(_type);
                setState(() {
                  currentyear = val;
                });
              },
              items: dates
                  .map((e) => DropdownMenuItem<String>(
                        value: e,
                        child: Row(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              e,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
