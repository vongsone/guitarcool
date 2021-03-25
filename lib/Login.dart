import 'package:flutter/material.dart';
import 'package:guitarcool/Sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'home.dart';

// import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String Email, Password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.redAccent,
        body: ListView(
      children: [
        Column(
          children: [
            Container(

              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60, left: 50, right: 10),
                    height: 170,
                    width: double.infinity,
                    child: Image.asset('assets/logo.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 36, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 10, left: 30, right: 30),
              height: 60,
              width: double.infinity,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Colors.black,
                  ),
                color: Colors.white70,
              ),
              child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, right: 10, left: 10),
                      child: Icon(
                        Icons.person_outline,
                        size: 35,
                      ),
                    ),
                    hintText: ('User or Email'), //ຊື່ ຫຼື ອີເມວ
                  ),
                  onChanged: (value) {
                    setState(() {
                      Email = value.trim();
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20, left: 30, right: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.white70,
              ),

              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, right: 10, left: 10),
                      child: Icon(
                        Icons.lock,
                        size: 35,
                      ),
                    ),
                    hintText: ('Password'), //ຊື່ ຫຼື ອີເມວ
                  ),
                  onChanged: (value) {
                    setState(() {
                      Password = value.trim();
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30, left: 60, right: 60),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.black,
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Login');
                  auth
                      .signInWithEmailAndPassword(
                          email: Email, password: Password)
                      .then((userCredentail) {
                    if (userCredentail.user != null) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have a account ! ',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return sign_up();
                      }));
                    },
                    padding: EdgeInsets.all(2),
                    height: 100,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
