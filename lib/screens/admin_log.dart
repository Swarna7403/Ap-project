import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/admin_reg.dart';
import 'package:my_app/screens/ars.dart';

class Admin_log extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                            width: 140,
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
                            'Admin Login',
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
                    child: Form(
                      key: _formKey,
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
                              child: TextFormField(
                                controller: email,
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
                              child: TextFormField(
                                controller: password,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.lightBlue.shade900),
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                          ]),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        singinUser(context, email, password, height, width);
                      }
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
                                      builder: (context) => Admin_reg(),
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

  void singinUser(context, email, password, height, width) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((value) async {
      Navigator.pop(context);
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Ars()), (route) => false);
    }).catchError((e) {
      print(e);
      print(e.hashCode);
      print(e.runtimeType);
      if (e is FirebaseAuthException) {
        if (e.code == 'wrong-password') {
          Navigator.pop(context);
          showDialog(
              context: context,
              builder: (contex) {
                return Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: height * 0.3,
                    width: width * 0.85,
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Wrong Password\n Retry...!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: width * 0.04,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff1e232c),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: MaterialButton(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Center(
                                    child: Text(
                                      "Ok",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.04,
                                        fontFamily: "Urbanist",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
              });
        } else if (e.code == 'user-not-found') {
          Navigator.pop(context);
          showDialog(
              context: context,
              builder: (contex) {
                return Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: width * 0.85,
                    height: height * 0.3,
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "User Doesn't exists\n Please create an account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: width * 0.04,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.7,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff1e232c),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: MaterialButton(
                                  onPressed: (() {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Admin_reg()));
                                  }),
                                  child: Center(
                                    child: Text(
                                      "Register",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.04,
                                        fontFamily: "Urbanist",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
              });
        } else if (e.code == 'invalid-email') {
          Navigator.pop(context);
          showDialog(
              context: context,
              builder: (contex) {
                return Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: height * 0.3,
                    width: width * 0.85,
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Check your mail correctly",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: width * 0.04,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            // width: width * 0.,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff1e232c),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: MaterialButton(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  child: Center(
                                    child: Text(
                                      "OK",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.04,
                                        fontFamily: "Urbanist",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
              });
        }
      }
    });
  }
}
