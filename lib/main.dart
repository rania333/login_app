// ignore: duplicate_ignore
// ignore_for_file: use_key_in_widget_constructors, duplicate_ignore, avoid_unnecessary_containers, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:task2/login.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          // ignore: prefer_const_constructors
          appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 10,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        shadowColor: Colors.blue[600],
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Expanded(
              child: Container(
                width: 300,
                child: Image.asset(
                  'pic/profile.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                  // width: 300,
                  // height: 300,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Text('Lorem Ipsum',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean id est orci.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: FlatButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                highlightColor: Colors.blueAccent[100],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: const Text('get started'),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
