import 'dart:ffi';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData hintIcon;
  final bool hidden;
  SearchBar({this.controller,this.hint,this.hintIcon,this.hidden = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidden,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(hintIcon,color: Color.fromRGBO(39, 174, 96, 1), size: 20,),
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.only(top: 3, bottom: 3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 5
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 5
          )
        )
      ),
      cursorColor: Colors.black54,
    );
  }
}
