import 'package:flutter/material.dart';

class Urs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(children: <Widget>[
              SizedBox(height: 200),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('asserts/check-circle.png'),
              ),
              SizedBox(height: 5),
              Text(
                'User Registration',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Colors.lightBlue.shade900,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Successful',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  color: Colors.lightBlue.shade900,
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.all(25),
                child: OutlinedButton(
                  child: Text(
                    "Go Back",
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.lightBlue.shade900),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(
                            color: Colors.lightBlue.shade900,
                            width: 5,
                            style: BorderStyle.solid)),
                  ),
                  onPressed: () {},
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
