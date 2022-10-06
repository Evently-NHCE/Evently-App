import 'package:flutter/material.dart';

class NotificationSearch extends StatelessWidget {
  const NotificationSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF303642),
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        backgroundColor: Color(0xFF303642),
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Notification');
              },
              icon: const Icon(
                Icons.settings,
              ))
        ],
      ),
    );
  }
}