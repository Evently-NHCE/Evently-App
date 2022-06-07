import 'package:evently/Screens/Navigation/Navigation.dart';
import 'package:evently/Screens/SignIN/SignIn.dart';
import 'package:evently/Utility/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'Screens/SignUP/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        routes: {
          '/SignUp': (context) => SignUp(),
                    '/SignIn': (context) => SignIn(),

                    '/Navigation': (context) => Navigation(),

        },
        debugShowCheckedModeBanner: false,
        title: 'Evently',
        theme: ThemeData(
            fontFamily: GoogleFonts.chivo().fontFamily,
            scaffoldBackgroundColor: kBackgroundColor),
        home: SignIn(),
      ),
    );
  }
}
