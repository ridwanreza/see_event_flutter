import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';



class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset('lib/assets/splash.png')
                ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('lib/assets/event.png',
                    height: 40,
                    width: 56,
                    ),
                    Text('SeeEvent',
                    style: GoogleFonts.ubuntu
                      (textStyle:
                      TextStyle(
                      color: Color(0xff214457),
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                       ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 28.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF214457),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF214457),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Text('Sign Up',
                        style: GoogleFonts.notoSans(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      }
                    ),
                  ),
                ),
              ),
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
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Text('Sign In',
                        style: GoogleFonts.notoSans(
                          textStyle: TextStyle(
                            color: Color(0xFF214457),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700
                            )
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
