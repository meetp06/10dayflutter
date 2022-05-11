// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_new, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masterflutterapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "🕸️ Welcome $name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  //fontFamily: "Myfont",
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.supervised_user_circle_outlined,
                      size: 33,
                      color: Colors.black,
                    ),
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.password_rounded,
                      size: 33,
                      color: Colors.black,
                    ),
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  splashColor: Colors.grey,
                  hoverColor: Colors.green,
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1),);
                     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 300,
                    height: 50,
                    child: Center(
                      child: changeButton
                          ? Icon(
                              Icons.task_alt_rounded,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                fontFamily: GoogleFonts.actor().fontFamily,
                              ),
                            ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      // shape:
                      //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 40 : 20),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Text(
                "@PowerdByMeet",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Center(
                    //     child: Padding(
                    //       padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    //       child: Text(
                    //         "Login",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           height: 1,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     shape: new RoundedRectangleBorder(
                    //       borderRadius: new BorderRadius.circular(20.0),
                    //     ),
                    //   ),
                    // ),