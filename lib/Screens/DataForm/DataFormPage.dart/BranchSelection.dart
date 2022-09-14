import 'dart:ui';

import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

final List<String> dates = [
  'CSE',
  'ECE',
  'AI/ML',
  'Data Science',
  'AUTOMOBILE',
  'MECHANICAL',
  'ISE',
  'CIVIL',
  'Other',
];

class BranchSelection extends StatefulWidget {
  const BranchSelection({Key? key}) : super(key: key);

  @override
  State<BranchSelection> createState() => _BranchSelectionState();
}

String? branch = '';
bool _selected = false;

class _BranchSelectionState extends State<BranchSelection> {
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
              dropdownColor: kNavbarcolour,
              underline: SizedBox(),
              isExpanded: true,
              alignment: Alignment.bottomCenter,
              icon: Image.asset("assets/Icons/.png"),
              iconSize: 30,
              hint: _selected
                  ? Text(
                      branch.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#808999")),
                    )
                  : Text(
                      "Select your branch",
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
                  branch = val;
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
