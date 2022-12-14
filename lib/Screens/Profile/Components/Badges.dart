import 'package:evently/Screens/Profile/Components/BadgesCard.dart';
import 'package:evently/Screens/Profile/Components/Model/BadgesChoice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class BadgesSection extends StatefulWidget {
  const BadgesSection({Key? key}) : super(key: key);

  @override
  State<BadgesSection> createState() => _BadgesSectionState();
}

class _BadgesSectionState extends State<BadgesSection> {
  @override
  Widget build(BuildContext context) {
    List _availableBadges = allBadges;
    List _earnedBadges = earnedBadges;

    // Removes earned badges from allBadges and stores it in _availableBadges
    _availableBadges.removeWhere((element) => _earnedBadges.contains(element));

    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 5.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 3, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: HexColor("#8246DE"),
              width: 1.0, // Underline thickness
            ))),
            child: Text(
              'EARNED BADGES',
              style: GoogleFonts.chivo(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(
              earnedBadges.length,
              (index) => BadgeCard(
                BadgeCardType.Earned,
                _earnedBadges[index].icon,
                context,
                _earnedBadges[index].msg,
                _earnedBadges[index].title,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 3, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: HexColor("#8246DE"),
              width: 1.0, // Underline thickness
            ))),
            child: Text(
              'AVAILABLE BADGES',
              style: GoogleFonts.chivo(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 3,
            children: List.generate(
              _availableBadges.length,
              (index) => BadgeCard(
                BadgeCardType.Available,
                _availableBadges[index].icon,
                context,
                _availableBadges[index].msg,
                _availableBadges[index].title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
