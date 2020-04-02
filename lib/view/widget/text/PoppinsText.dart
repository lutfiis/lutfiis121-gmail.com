import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsText extends StatelessWidget {
  final String text;
  final bool bold;
  final double size;
  final Color color;

  PoppinsText({
    this.text,
    this.bold = false,
    this.size,
    this.color = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          fontSize:size,
          color: color
      ),
    );
  }
}
