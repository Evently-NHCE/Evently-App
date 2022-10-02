// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:evently/Utility/Constants.dart';

class CustomDialog extends StatelessWidget {
  final String img;
  final String linkedinUrl;
  final String githubUrl;
  final String instagramUrl;
  final List<String> tags;
  final String title;
  CustomDialog(
      {Key? key,
      required this.title,
      required this.img,
      required this.tags,
      required this.linkedinUrl,
      required this.githubUrl,
      required this.instagramUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 40.h,
            width: 90.w,
            padding: EdgeInsets.only(left: 2.w, top: 10.h, right: 2.w),
            margin: EdgeInsets.only(
              top: Constants.avatarRadius,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(Constants.padding),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10),
                ]),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Hey There !",
                    style: GoogleFonts.poppins(
                        color: HexColor("#D3BBCA"), fontSize: 15),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "i'm $title",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Wrap(
                    spacing: 2.w,
                    runSpacing: 1.w,
                    children: <Widget>[
                      for (var i = 0; i < tags.length; i++)
                        chip(
                          tags[i],
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Connect",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LinkedInChip(
                        linkedinUrl: linkedinUrl,
                      ),
                      GitHubChip(
                        githubUrl: githubUrl,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InstagramChip(
                        instagramUrl: instagramUrl,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            )),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            radius: 18.w,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 15.w,
              backgroundImage: AssetImage(img),
            ),
          ),
        ),
      ],
    );
  }
}

class LinkedInChip extends StatelessWidget {
  String linkedinUrl;

  LinkedInChip({
    Key? key,
    required this.linkedinUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(linkedinUrl));
      },
      child: Container(
        height: 5.h,
        width: 30.w,
        decoration: BoxDecoration(
            color: AppColors.linkedincolor.withOpacity(0.60),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AntIcons.linkedinFilled,
              color: HexColor("#4154FC"),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "LinkedIn",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class GitHubChip extends StatelessWidget {
  String githubUrl;

  GitHubChip({
    Key? key,
    required this.githubUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(githubUrl));
      },
      child: Container(
        height: 5.h,
        width: 30.w,
        decoration: BoxDecoration(
            color: AppColors.githubcolor,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AntIcons.linkedinFilled,
              color: HexColor("#000000"),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "GitHub",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramChip extends StatelessWidget {
  String instagramUrl;

  InstagramChip({
    Key? key,
    required this.instagramUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(instagramUrl));
      },
      child: Container(
        height: 5.h,
        width: 30.w,
        decoration: BoxDecoration(
            color: HexColor("#F047FF").withOpacity(0.70),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AntIcons.instagramFilled,
              color: HexColor("#F047FF"),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "Instagram",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw 'Could not launch $url';
  }
}

class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 60;
}

Widget chip(String label) {
  return Chip(
    labelPadding: EdgeInsets.all(5.0),
    label: Text(label,
        style: GoogleFonts.poppins(
          color: Colors.black,
        )),
    backgroundColor: AppColors.neoncolor,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: EdgeInsets.all(6.0),
  );
}
