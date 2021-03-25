import 'package:flutter/material.dart';
import 'package:guitarcool/Login.dart';

class MainDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(

      child: Column(
        children: <Widget>[
          
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(

                children: <Widget>[
                  Container(

                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('',
                        ), fit: BoxFit.fill),
                      )
                  ),

                  Text('Jisoo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  Text('jo2255@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Pofile',
              style: TextStyle(
                fontSize: 18,
              ),),
            onTap: null,
          ),
          ListTile(
              leading: Icon(Icons.shop),
              title: Text('Shop',
                style: TextStyle(
                  fontSize: 18,
                ),),
              onTap: () => Navigator.pushReplacementNamed(context, '/home')),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting',
              style: TextStyle(
                fontSize: 18,
              ),),
            onTap: null,
          ),
          ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Log Out',
                style: TextStyle(
                  fontSize: 18,
                ),),
              // onTap: () => Navigator.pushReplacementNamed(context, '/login')),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  login()))),
        ],
      ),
    );
  }
}