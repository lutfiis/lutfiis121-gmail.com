import 'package:inventory_app/helper/screen/ScreenSizeHelper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor,textColor;
  final String text;
  CustomButton({this.text,this.textColor,this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor,
      ),
      height: ScreenSizeHelper.getHeight(context) * 0.1,
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.karla(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 15
        ),
      ),
    );
  }
}
