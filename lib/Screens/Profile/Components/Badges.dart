import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';

class BadgesSection extends StatefulWidget {
  const BadgesSection({Key? key}) : super(key: key);

  @override
  State<BadgesSection> createState() => _BadgesSectionState();
}

class _BadgesSectionState extends State<BadgesSection> {
  List<HeroIcon> icons = [
    HeroIcon(HeroIcons.search),
    HeroIcon(HeroIcons.fire),
    HeroIcon(HeroIcons.flag),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          Container(
            child: Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Image.asset('assets/Images/badgebg.png'),
                ),
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
          Container(
            child: Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Image.asset('assets/Images/badgeplain.png'),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Image.asset('assets/Images/badgeplain.png'),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Image.asset('assets/Images/badgeplain.png'),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Image.asset('assets/Images/badgeplain.png'),
                ),
              ),
            ),
          ),
          // GridView.count(
          //   crossAxisCount: 3,
          //   children: List.generate(12, (index) {
          //     return Container(
          //       child: Image.asset('assets/Images/badgeplain.png'),
          //     );
          //   }),
          // )
          // build2DArrayOfBadges(3, 12, 'assets/Images/badgeplain.png'),
        ],
      ),
    );
  }
}

// GridView build2DArrayOfBadges(int rowCount, int numItems, String imageFile) {
//   return GridView.count(
//     crossAxisCount: rowCount,
//     children: List.generate(numItems, (index) {
//       return Expanded(
//         child: Image.asset(imageFile),
//       );
//     }),
//   );
// }
