import 'package:flutter/material.dart';

class My_First_Page extends StatelessWidget {
  const My_First_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("hi from page one "),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("go back"))
          ],
        ),
      ),
    );
  }
}
