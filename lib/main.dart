import 'dart:ui';
import 'package:testing_app/screens/navigation.dart';

import 'screens/home.dart';
import 'package:flutter/material.dart';
import 'screens/profile.dart';
import 'screens/more.dart';
import 'screens/setting.dart';
import 'screens/welcome.dart';
import 'screens/contact.dart';
import 'screens/signup.dart';
import 'screens/login.dart';


void main() => runApp(MaterialApp(
  home: Welcome(),
  routes: {
    '/welcome': (context) => Welcome(),
    '/contact': (context) => Contact(),
    '/signup': (context) => SignUp(),
    '/login': (context) => Login(),
    '/bottomNav': (context) => bottomNavigation(),
  },
));




