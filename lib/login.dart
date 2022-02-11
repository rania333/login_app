// ignore_for_file: avoid_unnecessary_containers

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/welcome.dart';

class Login extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String mail = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: duplicate_ignore
        children: <Widget>[
          // ignore: prefer_const_constructors
          Expanded(
            // ignore: prefer_const_constructors, sized_box_for_whitespace
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              width: 300,
              child: Image.asset(
                'pic/unlock.png',
                // alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
                // width: 300,
                // height: 300,
              ),
            ),
          ),
          Card(
            shadowColor: Colors.blue[600],
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              children: [
                ListTile(
                  title: TextFormField(
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(), labelText: 'UserName'),
                    onChanged: (val) {
                      mail = val;
                    },
                  ),
                  leading: const Icon(Icons.message, color: Colors.blue),
                ),
                ListTile(
                  title: TextFormField(
                    textAlign: TextAlign.start,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(), labelText: 'Password'),
                    onChanged: (val) {
                      pass = val;
                    },
                  ),
                  leading: const Icon(Icons.lock, color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              highlightColor: Colors.blueAccent[100],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Welcome(mail: mail, pass: pass)));
              },
              child: const Text('Login'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              '____   Social Login   _____',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.facebook_outlined,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.mail_outline_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
