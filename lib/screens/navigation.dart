import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

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
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
        elevation: 0.0,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
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
                        Icon(Icons.home_filled, color: currentTab == 0 ? Colors.blue : Colors.grey,),
                        Text('Home',
                        style: TextStyle(
                            color: currentTab == 0 ? Colors.blue : Colors.grey),
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
                        Icon(Icons.person, color: currentTab == 1 ? Colors.blue : Colors.grey,),
                        Text('More',
                          style: TextStyle(
                              color: currentTab == 1 ? Colors.blue : Colors.grey),
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
                        Icon(Icons.settings, color: currentTab == 2 ? Colors.blue : Colors.grey,),
                        Text('Setting',
                          style: TextStyle(
                              color: currentTab == 2 ? Colors.blue : Colors.grey),
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
                        Icon(Icons.person, color: currentTab == 3 ? Colors.blue : Colors.grey,),
                        Text('Profile',
                          style: TextStyle(
                              color: currentTab == 3 ? Colors.blue : Colors.grey),
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
    );

  }}