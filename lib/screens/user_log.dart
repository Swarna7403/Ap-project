import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/user_reg.dart';

class User_log extends StatelessWidget {
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
                  height: 200,
                  width: 400,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 100, left: 40),
                            child: Text(
                              'Welcome back!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          Container(
                            width: 142.5,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade900,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.elliptical(140, 120),
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 40),
                          child: Text(
                            'User Login',
                            style: TextStyle(
                                color: Colors.lightBlue.shade900,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5),
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 100),
                SizedBox(
                    height: 300,
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
                            padding: EdgeInsets.only(bottom: 15),
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
                          Row(children: <Widget>[
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset('asserts/check-square.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5, right: 44),
                              child: Text(
                                'Remember Me',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('asserts/help-circle.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5, right: 0),
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ]),
                        ])),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: FloatingActionButton(
                    onPressed: () {},
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
                        text: 'New User? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'SignUp',
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
                                        builder: (context) => User_reg(),
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
