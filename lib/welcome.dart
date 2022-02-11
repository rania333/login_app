import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Welcome extends StatefulWidget {
  String mail = '';
  String pass = '';
  Welcome({Key? key, required this.mail, required this.pass}) : super(key: key);
  // Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Logged!',
          style: TextStyle(color: Colors.blue),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
            child: const Text('Welcome',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text('Your Username is :${widget.mail}',
                style: const TextStyle(
                  fontSize: 15,
                )),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Your Password is :${widget.pass}',
                style: const TextStyle(
                  fontSize: 15,
                )),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: const Image(
              image: AssetImage('pic/hey.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
