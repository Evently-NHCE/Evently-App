// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotificationAppBar(),
    );
  }
}

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                // ignore: prefer_const_literals_to_create_immutables
                text: TextSpan(children: [
                  TextSpan(
                    text: 'You have ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '3 Notifications ',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text: 'today ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ))
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 20),
              child: Container(
                width: double.infinity,
                child: Text('Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20)),
              ),
            ),
            Container(
              color: Color(0xFF303642),
              height: 250,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    title: Text(
                      'Event',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                          fontSize: 15),
                    ),
                    subtitle: Text(
                      'Varun has joined the art event',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                    leading: const Icon(Icons.person, color: Color.fromARGB(255, 124, 205, 243)),
                    trailing: const Icon(Icons.close, color: Colors.red, size: 20,),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20, bottom: 20),
              child: Container(
                width: double.infinity,
                child: Text('This Week',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20)),
              ),
            ),
            Container(
              color: Color(0xFF303642),
              height: 300,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    title: Text(
                      'New Follower',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                          fontSize: 15),
                    ),
                    subtitle: Text(
                      'Varun has started following you',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                    leading: const Icon(Icons.person, color: Color.fromARGB(255, 124, 205, 243)),
                    trailing: const Icon(Icons.close, color: Colors.red, size: 20,),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 52),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all Notifications',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 00),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Mark all as read ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
