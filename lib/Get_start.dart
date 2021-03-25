import 'package:flutter/material.dart';
import 'package:guitarcool/Login.dart';


class get_start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(

        height: size.height,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 150),
            Container(
              child: Text('guitar cool',style: TextStyle(fontSize: 48),),
            ),
            Container(
                margin: EdgeInsets.only(top: 30, bottom: 50),
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    border: Border.all(
                      color: Colors.black12,
                    )
                ),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/logo.png'),
                )),
            Container(
              height: 65,
              width: 246,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.black,
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Get Started');

                  // MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => login());
                  // Navigator.of(context).push(materialPageRoute);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return login();
                  }));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Text(
                  'Start app',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
