import 'package:inventory_app/helper/screen/ScreenSizeHelper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabViewMenu extends StatelessWidget {
  final BuildContext context;
  final String text;
  final int stateMode,mode;
  TabViewMenu({this.context,this.text,this.mode,this.stateMode});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: ScreenSizeHelper.getWidth(context) * 0.02
      ),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 3,
                    color: stateMode == mode ? Theme.of(context).primaryColor : Colors.transparent
                )
            )
        ),
        alignment: Alignment.topCenter,
        child: Text(
          text,
          style: GoogleFonts.karla(
              color: stateMode == mode ? Colors.black : Colors.black26,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}
