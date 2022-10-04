import 'package:evently/Screens/Profile/Components/Badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

enum BadgeCardType {
  Earned,
  Available,
}

Widget BadgeCard(BadgeCardType type, IconData icon, context) {
  late String badge;
  if (type == BadgeCardType.Earned) {
    badge = 'assets/Images/badgebg.png';
  }
  if (type == BadgeCardType.Available) {
    badge = 'assets/Images/badgeplain.png';
  }
  return GestureDetector(
      child: Stack(
        children: [
          Image.asset(badge),
          Transform.translate(
            offset: Offset(28, 28),
            child: Icon(
              icon,
              color: Colors.white,
              size: 45,
            ),
          ),
        ],
      ),
      onTap: () {
        _showMyDialog(context);
      });
}

Future<void> _showMyDialog(context) async {
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
            ),
            Transform.translate(
              offset: Offset(90, -70),
              child: Stack(
                children: [
                  Image.asset('assets/Images/popupbadge.png'),
                  Transform.translate(
                    offset: Offset(42, 42),
                    child: Icon(
                      Icons.wallet,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(135, 80),
              child: Text(
                'BADGE',
                style: GoogleFonts.chivo(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(100, 110),
              child: Text(
                'STREAK CHAMP',
                style: GoogleFonts.chivo(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#C9F560"),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(70, 150),
              child: Text(
                'You have successfully took \n part in 4+ events till now.',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: HexColor("#969696"),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(90, 220),
              child: SizedBox(
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ))),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
