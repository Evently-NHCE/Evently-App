import 'package:get/get.dart';

class BookmarkController extends GetxController {
  List bookmarks = [
    {
      'image': 'assets/Images/events/event3.jpeg',
      'title': 'HACKZON',
      'date': 'Sat , Feb 20 , 2022',
      'time': '12:00 AM - 02:00 PM',
      'location': '303 , BSH Department, Third Floor',
      'expired': false,
    },
    {
      'image': 'assets/Images/events/event5.jpeg',
      'title': 'Sargam',
      'date': 'Web , April 20 , 2022',
      'time': '10:00 AM - 01:00 PM',
      'location': 'Falconry , CSE Department, Second Floor',
      'expired': false,
    },
  ].obs;

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }
}
