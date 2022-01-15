import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPassword extends StatefulWidget {

  @override
  _EditPasswordState createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {

  bool _secureText = true;
  bool _secureText2 = true;
  bool _secureText3 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Password',
          style: GoogleFonts.notoSans(
            fontSize: 20,
            fontWeight: FontWeight.w700
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
              )
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              height: 80,
              color: Colors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF214457),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          child: Center(
                            child: Text('Change Password',
                              style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                        ),
                      ),
                    ),
                  )
                ],
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
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Old Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: FaIcon(_secureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye, size: 15, color: Color(0xFF214457),),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                              }
                            );
                          },
                        ),
                      ),
                      style: GoogleFonts.notoSans(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      obscureText: _secureText,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "New Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: FaIcon(_secureText2 ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye, size: 15, color: Color(0xFF214457),),
                          onPressed: () {
                            setState(() {
                              _secureText2 = !_secureText2;
                            }
                            );
                          },
                        ),
                      ),
                      style: GoogleFonts.notoSans(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      obscureText: _secureText2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm New Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: FaIcon(_secureText3 ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye, size: 15, color: Color(0xFF214457),),
                          onPressed: () {
                            setState(() {
                              _secureText3 = !_secureText3;
                            }
                            );
                          },
                        ),
                      ),
                      style: GoogleFonts.notoSans(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      obscureText: _secureText3,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
