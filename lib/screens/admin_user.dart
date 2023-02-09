import 'package:flutter/material.dart';
import 'package:my_app/screens/log_reg.dart';
import 'package:my_app/screens/log_reg1.dart';

class Admin_User extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 300),
                    bottomRight: Radius.elliptical(120, 250)),
              ),
              child: Column(children: <Widget>[
                SizedBox(height: 320, width: 400),
                SizedBox(
                  width: 270,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => log_reg(),
                          ),
                          );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue.shade900),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)),
                      ),
                    ),
                    child: Text(
                      "Admin",
                      style: TextStyle(
                        fontSize: 26,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 270,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => log_reg1(),
                          ),
                          );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue.shade900),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60))),
                    ),
                    child: Text(
                      "User",
                      style: TextStyle(
                        fontSize: 26,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          backgroundColor: Colors.lightBlue.shade900,
        ),
      );
}
