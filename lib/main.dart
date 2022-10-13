

import 'package:codigo2_people/home_page.dart';
import 'package:codigo2_people/people_page.dart';
import 'package:codigo2_people/test_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: TestPage(),
    );
  }
}