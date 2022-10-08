import 'package:flutter/material.dart';
import 'package:myappfortodaay/secondpage.dart';

import 'Home.dart';
import 'page_one.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "My_First_Page": (context) => My_First_Page(),
      "my prodcut page": (context) => My_second_Page()
    },
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
