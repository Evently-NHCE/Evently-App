//import 'package:device_preview_community/device_preview_community.dart';
import 'package:evently/Screens/DataForm/DataForm.dart';

import 'package:evently/Screens/Navigation/Navigation.dart';

import 'package:evently/Screens/SignIN/SignIn.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';
import 'Screens/SignUP/SignUp.dart';

// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));

  runApp(MyApp());
  // runApp(GetMaterialApp(home: MyApp()));
}

// CAlculate the height of the screen
double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return MediaQuery.of(context).size.height / dividedBy;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? usn = prefs.getString("usn");
    String? pass = prefs.getString("pass");

    // print("token is" + stringValue.toString());

    if (usn == null) {
      Get.offAll(() => SignUp());
    } else {
      Get.offAll(() => Navigation());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        routes: {
          '/SignUp': (context) => SignUp(),
          '/SignIn': (context) => SignIn(),
          '/Navigation': (context) => Navigation(),
          '/DataForm': (context) => DataForm(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Evently',
        theme: ThemeData(
            fontFamily: GoogleFonts.chivo().fontFamily,
            scaffoldBackgroundColor: kBackgroundColor),
        home: Container(),
      ),
    );
  }
}
