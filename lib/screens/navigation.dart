import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'package:flutter/material.dart';
import 'profile.dart';
import 'more.dart';
import 'setting.dart';



class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  _bottomNavigationState createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    More(),
    Setting(),
    Profile(),
  ];

  Widget currentScreen = Home();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF214457),
          onPressed: () {
            Navigator.pushNamed(context, '/createEvent');
          },
          elevation: 0.0,
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 75,
                      onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.home, color: currentTab == 0 ? Color(0xFF214457) : Colors.grey,),
                          Text('Home',
                          style: GoogleFonts.notoSans(
                              color: currentTab == 0 ? Color(0xFF214457) : Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 75,
                      onPressed: () {
                        setState(() {
                          currentScreen = More();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.search, color: currentTab == 1 ? Color(0xFF214457) : Colors.grey,),
                          Text('Explore',
                            style: GoogleFonts.notoSans(
                                color: currentTab == 1 ? Color(0xFF214457) : Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 75,
                      onPressed: () {
                        setState(() {
                          currentScreen = Setting();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(currentTab == 2 ? 'lib/assets/event.png' : 'lib/assets/event_menu.png',
                          width: 29,
                          height: 25,
                          ),
                          Text('My Event',
                            style: GoogleFonts.notoSans(
                                color: currentTab == 2 ? Color(0xFF214457) : Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 75,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, color: currentTab == 3 ? Color(0xFF214457) : Colors.grey,),
                          Text('Profile',
                            style: GoogleFonts.notoSans(
                                color: currentTab == 3 ? Color(0xFF214457) : Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }}


