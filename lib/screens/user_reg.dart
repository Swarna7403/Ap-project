import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/urs.dart';
import 'package:my_app/screens/user_log.dart';

class User_reg extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
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
                            'User Registration',
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'FirstName',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: TextFormField(
                                controller: name,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.lightBlue.shade900),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    suffixIcon:
                                        Image.asset('asserts/user.png')),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
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
                              padding: EdgeInsets.only(bottom: 0),
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
                          ]),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        register(context, email, password,name, height, width);
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
                                      builder: (context) => User_log(),
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

  void register(context, email, password, name, height, width) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.text, password: password.text)
        .then((value) => FirebaseFirestore.instance
                .collection("users")
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .set({
              "profileImage":
                  "https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg",
              // "name": username.text,
              "email": email.text,
              "name": name.text,
              'admin': false,
            }))
        .then((value) async {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Urs()), (route) => false);
      // Navigator.pop(context);
    }).catchError((onError) {
      print(onError.code);
      if (onError is FirebaseAuthException) {
        if (onError.code == 'email-already-in-use') {
          Navigator.pop(context);
          showDialog(
              context: context,
              builder: (contex) {
                return Stack(
                  children: [
                    Center(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Material(
                        child: Container(
                          height: height * 0.3,
                          width: width * 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'This email already exists..\n Please login',
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
                                width: width * 0.2,
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
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    User_reg()),
                                            (route) => false);
                                      }),
                                      child: Center(
                                        child: Text(
                                          "Login",
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
                    )),
                  ],
                );
              });
        }
      }
    });
  }
}
