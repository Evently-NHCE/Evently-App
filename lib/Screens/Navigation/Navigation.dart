import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:evently/Screens/Clubs/Clubs.dart';
import 'package:evently/Screens/HomePage/HomePage.dart';
import 'package:evently/Screens/Navigation/Model/NavItem.dart';
import 'package:evently/Screens/Profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Pages> _pages = [
    Pages(
      iconpath: Icons.home,
      size: 30,
      title: 'Home',
    ),
    Pages(
      iconpath: Icons.group,
      size: 30,
      title: 'Clubs',
    ),
    Pages(
      iconpath: Icons.person,
      size: 30,
      title: 'Profile',
    ),
  ];

  int _pageindex = 0;


  @override
  void initState() {
    // TODO: implement initState

    Future(() {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        setState(() {
          _pageindex = 0;
        });
      });
    });
    super.initState();
  }

  void _openPage(int index) {
    
    var _type = FeedbackType.selection;
    Vibrate.feedback(_type);
    setState(() {
      _pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List routes = [
      HomePage(),
      Clubs(),
      Profile(),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        child: IndexedStack(index: _pageindex, children: [
          HomePage(),
          Clubs(),
          Profile(),
        ]),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: HexColor("#313A4A"),
          backgroundColor: Colors.transparent,
          items: _pages.map((Pages page) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(
                  page.iconpath,
                  size: page.size,
                  color: _pageindex == _pages.indexOf(page)
                      ? HexColor("#FFFFFF")
                      : HexColor("#8E8E8E"),
                ),
           
              ],
            );
          }).toList(),
          onTap: _openPage),
    );
  }
}
