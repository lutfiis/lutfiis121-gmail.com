import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Color.fromRGBO(39, 174, 96, 1),
      flexibleSpace: Container(
        margin: EdgeInsets.only(
          left: 25
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}
