import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {

  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon, this.hintText);

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
              child: fieldIcon,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.70,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
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
                  style: GoogleFonts.notoSans(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
