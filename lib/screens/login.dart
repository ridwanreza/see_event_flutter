import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../UI/CustomInputField.dart';
import '../UI/CustomInputFieldPassword.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Sign In',
        style: GoogleFonts.notoSans(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
            ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF0E1D25),
                Color(0xFF214457),
              ]
            ),
          ),
        ),
       ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFECEEEF),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 75, top: 25),
                    child: Text('Welcome Back!',
                    style: GoogleFonts.notoSans(
                      fontSize: 40,
                      color: Color(0xFF214457),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: CustomInputField(
                      Icon(Icons.person, color: Colors.white), 'Email/Username'
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: CustomInputFieldPassword(
                        Icon(Icons.lock, color: Colors.white), 'Password'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 50,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushReplacementNamed(context, '/bottomNav');
                    },
                      child: Text('Sign In'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF214457),
                        elevation: 2,
                        textStyle: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text('forgot password?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF3E89AE),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/contact');
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Divider(
                            color: Color(0xFFE3E3E3),
                            thickness: 1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text('or',
                          style: GoogleFonts.notoSans(
                              fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF999999)
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Divider(
                            color: Color(0xFFE3E3E3),
                            thickness: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF214457),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                          child: Image.asset('lib/assets/facebookLogo.png',
                                          height: 23,
                                          width: 23,)
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('Login with Facebook',
                                      style: GoogleFonts.notoSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF214457)
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/bottomNav');
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0, bottom: 50.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF214457),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset('lib/assets/googleLogo.png',
                                          height: 23,
                                          width: 23,)
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text('Login with Google',
                                        style: GoogleFonts.notoSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF214457)
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/bottomNav');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                ],
              )
            ),
          ),
        )
    );

  }
}