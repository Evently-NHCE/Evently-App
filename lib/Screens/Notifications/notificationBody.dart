import 'package:flutter/material.dart';


const int itemCount = 20;

class NotificationBody extends StatelessWidget {
  const NotificationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const ListTile(
                  title: Text('New Follower'),
                   leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.close),
                );
              },
            );
  }
}