import 'package:get/get.dart';

class BookmarkController extends GetxController {
  List bookmarks = [
    {
      'image': 'assets/Images/bookmarkImg.png',
      'title': 'Code-a-Pookalam',
      'date': 'Sat , Feb 20 , 2022',
      'time': '12:00 AM - 02:00 PM',
      'location': '303 , BSH Department, Third Floor',
      'expired': false,
    },
    {
      'image': 'assets/Images/bookmarkImg.png',
      'title': 'Sargam',
      'date': 'Web , April 20 , 2022',
      'time': '10:00 AM - 01:00 PM',
      'location': 'Falconry , CSE Department, Second Floor',
      'expired': false,
    },
    {
      'image': 'assets/Images/bookmarkImg.png',
      'title': 'Hackathon',
      'date': 'Tue , Nov 22 , 2022',
      'time': '02:00 PM - 4:00 PM',
      'location': '401 , CSE Department, Second Floor',
      'expired': true,
    }
  ].obs;

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }
}
