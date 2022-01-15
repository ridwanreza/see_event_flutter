import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  _CreateEventState createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Event',
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
            centerTitle: false,
        ),
    );
  }
}
