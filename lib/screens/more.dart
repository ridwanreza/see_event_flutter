import 'dart:ui';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
                  icon: Icon(Icons.phone),
                  label: Text('Contact Us')
              ),
              TextButton.icon(onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome');
              },
                  icon: Icon(Icons.logout),
                  label: Text('logout')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
