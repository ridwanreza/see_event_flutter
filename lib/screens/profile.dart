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
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
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
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Icon(Icons.person_outlined, color: Color(0xFF214457)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Text('Edit Profile',
                                      style: GoogleFonts.notoSans(
                                        fontSize: 16,
                                        color: Color(0xFF214457),
                                        fontWeight: FontWeight.w700,
                                      ),),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(Icons.arrow_forward_ios_rounded,
                                        color: Color(0xFF214457),
                                        size: 17,),
                                    )
                                  )
                                ],
                              ),
                            onTap: () {
                              Navigator.pushNamed(context, '/editProfile');
                            }
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Icon(Icons.person_outlined, color: Color(0xFF214457)),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 50),
                                        child: Text('Edit Password',
                                          style: GoogleFonts.notoSans(
                                            fontSize: 16,
                                            color: Color(0xFF214457),
                                            fontWeight: FontWeight.w700,
                                          ),),
                                      ),
                                    ),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Icon(Icons.arrow_forward_ios_rounded,
                                            color: Color(0xFF214457),
                                            size: 17,),
                                        )
                                    )
                                  ],
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/editPassword');
                                }
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Image.asset('lib/assets/event.png',
                                        width: 23,
                                        height: 17,),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 50),
                                        child: Text('Saved Events',
                                          style: GoogleFonts.notoSans(
                                            fontSize: 16,
                                            color: Color(0xFF214457),
                                            fontWeight: FontWeight.w700,
                                          ),),
                                      ),
                                    ),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Icon(Icons.arrow_forward_ios_rounded,
                                            color: Color(0xFF214457),
                                            size: 17,),
                                        )
                                    )
                                  ],
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/contact');
                                }
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                          ),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Icon(Icons.logout, color: Color(0xFF214457)),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 50),
                                        child: Text('Log out',
                                          style: GoogleFonts.notoSans(
                                            fontSize: 16,
                                            color: Color(0xFF214457),
                                            fontWeight: FontWeight.w700,
                                          ),),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/welcome');
                                }
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
