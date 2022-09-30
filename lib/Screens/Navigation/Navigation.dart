import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:evently/Screens/Profile/Components/ProfilePageBody.dart';
import 'package:evently/Screens/Profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import '../My Events/MyEvents.dart';
import '/Utility/Constants.dart';
import 'package:evently/Screens/BookMark/BookMark.dart';

import '../../controllers/NavigationBarController.dart';
import '../HomePage/HomePage.dart';

class Navigation extends StatelessWidget {
  Navigation({Key? key}) : super(key: key);
  final bottomNavigationBarController landingPageController =
      Get.put(bottomNavigationBarController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Obx(
          () => Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: CustomNavigationBar(
              elevation: 10,
              isFloating: true,
              iconSize: 30.0,
              borderRadius: Radius.circular(12),
              selectedColor: AppColors.neoncolor,
              strokeColor: Color(0x30040307),
              unSelectedColor: Colors.white,
              backgroundColor: HexColor("#3D4552"),
              items: [
                CustomNavigationBarItem(
                  icon: const HeroIcon(HeroIcons.home),
                ),
                CustomNavigationBarItem(
                  icon: const HeroIcon(HeroIcons.collection),
                ),
                CustomNavigationBarItem(
                  icon: const HeroIcon(HeroIcons.bookmark),
                ),
                CustomNavigationBarItem(
                  icon: const HeroIcon(HeroIcons.user),
                ),
              ],
              currentIndex: landingPageController.tabIndex.value,
              onTap: landingPageController.changeTabIndex,
            ),
          ),
        ),
        body: SafeArea(
          maintainBottomViewPadding: true,
          child: Obx(
            () => IndexedStack(
              index: landingPageController.tabIndex.value,
              children: [
                HomePage(),
                MyEventBody(),
                BookMarkBody(),
                Profile(),
                ProfilePageBody(),
              ],
            ),
          ),
        ));
  }
}
