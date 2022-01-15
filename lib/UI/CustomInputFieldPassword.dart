import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomInputFieldPassword extends StatefulWidget {

  Icon fieldIcon;
  String hintText;

  CustomInputFieldPassword(this.fieldIcon, this.hintText);



  @override
  _CustomInputFieldPasswordState createState() => _CustomInputFieldPasswordState();
}

class _CustomInputFieldPasswordState extends State<CustomInputFieldPassword> {

  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 5.0,
        color: Color(0xFF214457),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: widget.fieldIcon,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.70,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: widget.hintText,
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
                    )
                  ),
                  style: GoogleFonts.notoSans(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  obscureText: _secureText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


