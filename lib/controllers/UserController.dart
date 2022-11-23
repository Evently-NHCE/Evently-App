import 'package:evently/Model/UserInfo.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  UserInfo? userInfo;

  void setUserInfo(UserInfo usrInf) async {
    userInfo = usrInf;
    print(userInfo?.toJson());
    print('Stored UserInfo successfully');
    update();
  }
}
