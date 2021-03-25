import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guitarcool/Drawer.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text('Guitar'),
      backgroundColor: Colors.redAccent,

          actions: [Icon(Icons.shopping_cart, color: Colors.black),
      ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [


            Container(
              height: 600,
              child: ListView(
                children: [
                  InkWell(
                    onTap:() {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'guitar210',style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 16,
                                    ),
                                    ),
                                  ),

                                  Text('500000 kib',style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),

                                ],
                              ),

                            ),
                            Image.asset('assets/tar1.png',width: 140,),

                          ],
                        ),
                      ),

                    ),
                  ),



                  InkWell(
                    onTap:() {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'guitar548',style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 16,
                                    ),
                                    ),
                                  ),

                                  Text('600000 kib',style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),

                                ],
                              ),

                            ),
                            Image.asset('assets/tar3.jpg',width: 140,),

                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:() {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'guitar351',style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 16,
                                    ),
                                    ),
                                  ),

                                  Text('450000 kib',style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),

                                ],
                              ),

                            ),
                            Image.asset('assets/tar4.jpg',width: 140,),

                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:() {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'guitar394',style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 16,
                                    ),
                                    ),
                                  ),

                                  Text('750000 kib ',style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),

                                ],
                              ),

                            ),
                            Image.asset('assets/tar6.jpg',width: 140,),

                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:() {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'guitar548',style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 16,
                                    ),
                                    ),
                                  ),

                                  Text('550000 kib',style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),

                                ],
                              ),

                            ),
                            Image.asset('assets/tar2.jpg',width: 140,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )


            ],
          ),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
