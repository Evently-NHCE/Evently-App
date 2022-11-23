import 'package:evently/Model/UserInfo.dart';
import 'package:evently/Screens/Profile/Components/ProfilePageBody.dart';
import 'package:evently/controllers/UserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserController userController =
        Get.put(UserController(), permanent: false);
    UserInfo? userInfo = userController.userInfo;
    return Scaffold(
      body: ProfilePageBody(userInfo: userInfo),
    );
  }
}
