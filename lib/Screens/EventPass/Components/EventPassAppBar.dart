import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Widget PassAppBar() {
  return Container(
      child: Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.5),
            color: HexColor("#3D4552"),
          ),
          child: IconButton(
              padding: EdgeInsets.zero,
              color: HexColor("#C9F560"),
              alignment: Alignment.bottomRight,
              onPressed: () {},
              iconSize: 30,
              icon: Icon(
                Icons.chevron_left_outlined,
              )),
        ),
        SizedBox(
          width: 80,
        ),
        Container(
          child: Text(
            'Event Pass',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        )
      ],
    ),
  ));
}
