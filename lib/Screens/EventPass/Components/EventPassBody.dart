import 'dart:ui';

import 'package:evently/Screens/EventPass/Components/EventPassAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class EventPassBody extends StatefulWidget {
  const EventPassBody({Key? key}) : super(key: key);

  @override
  State<EventPassBody> createState() => _EventPassBodyState();
}

class _EventPassBodyState extends State<EventPassBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: PassAppBar(),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, 5, 25, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 370,
                  width: 339,
                  decoration: BoxDecoration(
                    color: HexColor("#3D4552"),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        child: Image.asset('assets/Images/eventbanner.png'),
                        height: 180,
                        width: 292,
                      ),
                      Text(
                        'Code-a-Pookalam',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 292,
                        child: Divider(
                          color: Colors.white,
                          thickness: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
