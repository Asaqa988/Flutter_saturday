import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mypages = ["page_one", "page_two"];
  String myfirstvalue = "page_one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color.fromARGB(255, 190, 182, 185),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: myfirstvalue,
                items: mypages
                    .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                    .toList(),
                onChanged: (value) {

                  setState(() {
                    myfirstvalue=value.toString(); 
                  });
                  if (myfirstvalue == "page_one") {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "My_First_Page");
                                },
                                child: Text("page1")),
                          );
                        },
                      );
                    });
                  } else if (myfirstvalue == "page_two") {
                    setState(() {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, "my prodcut page");
                                },
                                child: Text("page2")),
                          );
                        },
                      );
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
