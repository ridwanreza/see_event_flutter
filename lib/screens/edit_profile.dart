import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile',
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
                            child: Text('Save Profile',
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
              )
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFECEEEF),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.80,
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('lib/assets/person.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
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
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Icon(Icons.file_upload_outlined),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text('Upload new picture',
                                  style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                          color: Color(0xFF214457),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        ),
                      ),
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
                        hintText: "First Name",
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
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 24),
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Last Name",
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

                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 24),
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
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

                        ),
                      )
                  ),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
