import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:evently/Screens/AbotUs%20Page/AboutUs.dart';
import 'package:evently/Screens/Onboarding/Onboarding.dart';
import 'package:evently/Screens/Profile/Profile.dart';
import 'package:evently/controllers/drawerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../My Events/MyEvents.dart';
import '/Utility/Constants.dart';
import 'package:evently/Screens/BookMark/BookMark.dart';

import '../../controllers/NavigationBarController.dart';
import '../HomePage/HomePage.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final bottomNavigationBarController landingPageController =
      Get.put(bottomNavigationBarController(), permanent: false);

  final dController dControllers = Get.put(dController(), permanent: false);
  String? usn;
  String? name;
  @override
  void initState() {
    // TODO: implement initState
    getStringValuesSF();

    super.initState();
  }

  getStringValuesSF() async {
    SharedPreferences prefs =
        await SharedPreferences.getInstance(); //Return String
    usn = prefs.getString("usn");
    name = prefs.getString("name");

    // print("token is" + stringValue.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        key: dControllers.key,
        drawer: Drawer(
          backgroundColor: AppColors.primaryColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                // <-- SEE HERE

                decoration: BoxDecoration(color: AppColors.secondaryColor),
                accountName: Text(
                  name == "null" ? name.toString() : "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  usn == "null" ? usn.toString() : "To Evently",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  color: AppColors.neoncolor,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.whiteColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.privacy_tip_outlined,
                  color: AppColors.neoncolor,
                ),
                title: Text(
                  'About',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.whiteColor),
                ),
                onTap: () {
                  Get.to(AboutUs());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: AppColors.neoncolor,
                ),
                title: Text(
                  'Clear',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.whiteColor),
                ),
                onTap: () async {
                  final preferences = await SharedPreferences.getInstance();
                  await preferences.clear();
                  Get.to(Onboarding());
                },
              ),
            ],
          ),
        ),
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
                  icon: const HeroIcon(HeroIcons.rectangleStack),
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
                MyEvent(),
                BookMark(),
                Profile(),
              ],
            ),
          ),
        ));
  }
}
