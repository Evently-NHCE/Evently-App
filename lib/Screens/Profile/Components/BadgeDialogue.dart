import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Future<void> showMyDialog(
    context, String msg, String title, IconData icon) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Container(
              height: 299,
              width: 328,
              decoration: BoxDecoration(
                color: HexColor("#3D4552"),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    'BADGE',
                    style: GoogleFonts.chivo(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.chivo(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#C9F560"),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: HexColor("#969696"),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 42,
                    width: 137,
                    child: TextButton(
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<HexColor>(
                            HexColor("#7862F7"),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ))),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(90, -70),
              child: Stack(
                children: [
                  Image.asset('assets/Images/popupbadge.png'),
                  Transform.translate(
                    offset: Offset(42, 42),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
