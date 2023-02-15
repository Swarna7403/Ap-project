import 'package:flutter/material.dart';
import 'package:my_app/screens/admin_user.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(200, 300),
                  bottomRight: Radius.elliptical(120, 250)),
            ),
            child: Column(children: <Widget>[
              SizedBox(height: 200),
              SizedBox(
                height: 250,
                width: 500,
                child: Image.asset(
                    'asserts/undraw_delivery_address_re_cjca 1.png'),
              ),
              SizedBox(height: 40),
              Text(
                'Welcome to Tracking',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(height: 60),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Admin_User(),
                      ),
                      );
                },
                backgroundColor: Colors.blueGrey.shade200,
                elevation: 0,
                child: Container(
                  child: Icon(Icons.arrow_forward),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlue.shade900,
                          spreadRadius: 10,
                        )
                      ]),
                ),
              ),
            ]),
          ),
        ),
        backgroundColor: Colors.lightBlue.shade900,
      ),
    );
  }
}
