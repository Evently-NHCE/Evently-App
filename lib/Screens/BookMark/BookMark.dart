// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:evently/Utility/AppBar.dart';
import 'package:evently/Screens/BookMark/Components/BookMarkBody.dart';
import 'package:flutter/material.dart';

class BookMark extends StatefulWidget {
  const BookMark({Key? key}) : super(key: key);

  @override
  State<BookMark> createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar('Bookmark'), body: BookMarkBody());
  }
}
