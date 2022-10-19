// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evently/Screens/AbotUs%20Page/Components-1(Old%20Page)/CircularAvatarCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

import 'CustomDialog.dart';

class AboutUsBody extends StatelessWidget {
  AboutUsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h, bottom: 2.h),
      child: Container(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    openSaifsDialog();
                  },
                  child: CircleAvatarCard(
                    name: "Saif",
                    imagePath: "assets/Images/Saif.png",
                    linkedinUrl: "https://www.linkedin.com/in/saifudeenhisham",
                    githubUrl: 'https://github.com/beSaif',
                    instagramUrl: "https://www.instagram.com/be.saif/",
                  ),
                ),
                InkWell(
                  onTap: () {
                    openMabusDialog();
                  },
                  child: CircleAvatarCard(
                    name: "Mabud",
                    imagePath: "assets/Images/Mabud.png",
                    linkedinUrl: "https://www.instagram.com/pavel_alam_/",
                    githubUrl:
                        'https://www.linkedin.com/in/sk-mabud-alam-444a87133/',
                    instagramUrl: "https://www.instagram.com/pavel_alam_/",
                  ),
                ),
                //SimPleAboutUsCard(),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    openJumainahsDialog();
                  },
                  child: CircleAvatarCard(
                    name: "Jumainah",
                    imagePath: "assets/Images/Jumainah.png",
                    linkedinUrl:
                        "https://www.linkedin.com/in/jumainah-khan-513222220/",
                    githubUrl: 'https://github.com/jumainahkhan',
                    instagramUrl: "https://www.instagram.com/jumainahhkhan/",
                  ),
                ),
                InkWell(
                  onTap: () {
                    openSanjanasDialog();
                  },
                  child: CircleAvatarCard(
                    name: "Sanjana",
                    imagePath: "assets/Images/Sanjana.png",
                    linkedinUrl:
                        "https://www.linkedin.com/in/sanjana-chinta-723b23223/",
                    githubUrl: 'https://github.com/SanjanaChinta',
                    instagramUrl: "https://www.instagram.com/sanju19._____/",
                  ),
                ),
                //SimPleAboutUsCard(),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    openShivanisDialog();
                  },
                  child: CircleAvatarCard(
                    name: "Shivani",
                    imagePath: "assets/Images/Shivani.png",
                    linkedinUrl:
                        "https://www.linkedin.com/in/shivani-biradar-a09831222/",
                    githubUrl: 'https://github.com/shivanibiradar27',
                    instagramUrl:
                        "https://www.instagram.com/_shivani.biradar_/",
                  ),
                ),
                InkWell(
                  onTap: () {
                    openVarunsDialog();
                  },
                  child: CircleAvatarCard(
                    name: "Varun",
                    imagePath: "assets/Images/Varun.png",
                    linkedinUrl:
                        "https://www.linkedin.com/in/varun-arts-6212b2242/",
                    githubUrl: 'https://github.com/varunmg2102',
                    instagramUrl: "https://www.instagram.com/_lover_boy_mgv/",
                  ),
                ),
                //SimPleAboutUsCard(),
              ],
            ),
            SizedBox(
              height: 4.h,
            )
          ],
        ),
      ),
    ));
  }
}

void openSaifsDialog() {
  List<String> saifsTags = ["#UI", "Android", "iOS"];

  Get.dialog(CustomDialog(
    linkedinUrl: "https://www.linkedin.com/in/saifudeenhisham",
    githubUrl: 'https://github.com/beSaif',
    instagramUrl: "https://www.instagram.com/be.saif/",
    title: "Saif",
    img: "assets/Images/Saif.png",
    tags: saifsTags,
  ));
}

void openMabusDialog() {
  List<String> saifsTags = [
    "#UI",
    "#Android",
    "#iOS",
    "#Flutter",
    "#Django",
    "#git",
    "#opensource"
  ];

  Get.dialog(CustomDialog(
    linkedinUrl: "https://www.instagram.com/pavel_alam_/",
    githubUrl: 'https://www.linkedin.com/in/sk-mabud-alam-444a87133/',
    instagramUrl: "https://www.instagram.com/pavel_alam_/",
    title: "Mabud",
    img: "assets/Images/Mabud.png",
    tags: saifsTags,
  ));
}

void openJumainahsDialog() {
  List<String> saifsTags = [
    "#UI",
    "#Android",
    "#iOS",
    "#Flutter",
    "#Django",
    "#git",
    "#opensource"
  ];

  Get.dialog(CustomDialog(
    linkedinUrl: "https://www.linkedin.com/in/jumainah-khan-513222220/",
    githubUrl: 'https://github.com/jumainahkhan',
    instagramUrl: "https://www.instagram.com/jumainahhkhan/",
    title: "Jumainah",
    img: "assets/Images/Jumainah.png",
    tags: saifsTags,
  ));
}

void openSanjanasDialog() {
  List<String> saifsTags = [
    "#UI",
    "#Android",
    "#iOS",
    "#Flutter",
    "#Django",
    "#git",
    "#opensource"
  ];

  Get.dialog(CustomDialog(
    title: "Sanjana",
    img: "assets/Images/Sanjana.png",
    tags: saifsTags,
    linkedinUrl: "https://www.linkedin.com/in/sanjana-chinta-723b23223/",
    githubUrl: 'https://github.com/SanjanaChinta',
    instagramUrl: "https://www.instagram.com/sanju19._____/",
  ));
}

void openShivanisDialog() {
  List<String> saifsTags = [
    "#UI",
    "#Android",
    "#iOS",
    "#Flutter",
    "#Django",
    "#git",
    "#opensource"
  ];

  Get.dialog(CustomDialog(
    linkedinUrl: "https://www.linkedin.com/in/shivani-biradar-a09831222/",
    githubUrl: 'https://github.com/shivanibiradar27',
    instagramUrl: "https://www.instagram.com/_shivani.biradar_/",
    title: "Shivani",
    img: "assets/Images/Shivani.png",
    tags: saifsTags,
  ));
}

void openVarunsDialog() {
  List<String> saifsTags = [
    "#UI",
    "#Android",
    "#iOS",
    "#Flutter",
    "#Django",
    "#git",
    "#opensource"
  ];

  Get.dialog(CustomDialog(
    linkedinUrl: "https://www.linkedin.com/in/varun-arts-6212b2242/",
    githubUrl: 'https://github.com/varunmg2102',
    instagramUrl: "https://www.instagram.com/_lover_boy_mgv/",
    title: "Varun",
    img: "assets/Images/Varun.png",
    tags: saifsTags,
  ));
}
