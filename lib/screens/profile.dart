import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
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
            )
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFECEEEF),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 32),
            width: MediaQuery.of(context).size.width * 0.80,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 65,
                            backgroundImage: AssetImage('lib/assets/person.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text('Ridwan Reza Ramadhan',
                              style: GoogleFonts.notoSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF373737),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            child: Text('ridwanreza77@gmail.com',
                            style: GoogleFonts.notoSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF373737)
                            ),),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: ListView(
                    shrinkWrap: true,
                    children: [

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
