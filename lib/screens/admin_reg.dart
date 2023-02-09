import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/admin_log.dart';
import 'package:my_app/screens/ars.dart';

class Admin_reg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              height: 800,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 300),
                    bottomRight: Radius.elliptical(120, 250)),
              ),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 250,
                  width: 400,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 50, left: 40),
                            child: Text(
                              'Create',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 125,
                          ),
                          Container(
                            width: 136.5,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade900,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.elliptical(136.5, 120),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 40),
                          child: Text(
                            'Account',
                            style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontSize: 48,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 60),
                          child: Text(
                            'Admin Registration',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                    height: 330,
                    width: 300,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Email ID',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.lightBlue.shade900),
                                    borderRadius: BorderRadius.circular(10)),
                                suffixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.lightBlue.shade900),
                                      borderRadius: BorderRadius.circular(10)),
                                  suffixIcon:
                                      Image.asset('asserts/Vector.png')),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Re-enter Password',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 0),
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.lightBlue.shade900),
                                      borderRadius: BorderRadius.circular(10)),
                                  suffixIcon:
                                      Image.asset('asserts/Vector.png')),
                            ),
                          ),
                        ])),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ars(),
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
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: RichText(
                    text: TextSpan(
                        text: 'Exiting User? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                  color: Colors.lightBlue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Admin_log(),
                                      ),
                                      );
                                }),
                        ]),
                  ),
                )
              ]),
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue.shade900,
      ),
    );
  }
}
