import 'package:flutter/material.dart';
import 'package:guitarcool/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:guitarcool/home.dart';

class sign_up extends StatefulWidget {
  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  String email,password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
        body: ListView(
          children: [
            Column(
              children: [
                Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60,left: 50,right: 10),

                        height: 170,
                        width: double.infinity,

                        child: Image.asset('assets/logo.png'),
                      ),
                      SizedBox(height: 10),
                      Text('Create an account',style: TextStyle(fontSize: 36,color: Colors.black),),
                    ],
                  ),
                Container(
                  margin: EdgeInsets.only(top: 50,bottom: 10,left: 30,right: 30),
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
                          padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                          child: Icon(Icons.person_outline,size: 35,),
                        ),
                        hintText: ('User or Email'), //ຊື່ ຫຼື ອີເມວ
                      ),
                      onChanged: (value){
                        setState(() {
                          email = value.trim();
                        });
                      }
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
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
                        padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                        child: Icon(Icons.lock,size: 35,),
                      ),
                      hintText: ('Password'), //ຊື່ ຫຼື ອີເມວ
                    ),
                    onChanged: (value){
                      password = value.trim();
                    },
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 10,bottom: 20,left: 30,right: 30),
                //   height: 60,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(20)),
                //       border: Border.all(
                //         color: Colors.black,
                //       )
                //   ),
                //   child: TextField(
                //     obscureText: true,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(20)),
                //       ),
                //       prefixIcon: Padding(
                //         padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
                //         child: Icon(Icons.lock,size: 35,),
                //       ),
                //       hintText: ('Confirm Password'), //ຊື່ ຫຼື ອີເມວ
                //     ),
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 30,left: 60,right: 60),
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
                      print('Sign Up');
                      auth.createUserWithEmailAndPassword(email: email, password: password).then((userCredentail){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => Home()));

                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Text(
                      'Sign Up',
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
                      Text('If you have a account ! ',style: TextStyle(color: Colors.black,fontSize: 18),),
                      MaterialButton(
                        onPressed: (){
                          print('Login');
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return login();
                          }));
                        },
                        padding: EdgeInsets.all(2),
                        height: 100,
                        child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 15),),

                      ),
                    ],
                  ) ,
                )
              ],
            ),
          ],
        )
    );
  }
}
