import 'package:flutter/material.dart';

class GeneralForm extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData hintIcon;
  final String validateText;
  final bool hidden;
  GeneralForm({this.controller,this.hint,this.hintIcon,this.validateText,this.hidden = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidden,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(hintIcon,color: Colors.black54),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor
          ))
      ),
      cursorColor: Colors.black54,
      validator: (value){
        if(value.trim().isEmpty){
          return validateText;
        }
        return null;
      },
    );
  }
}
