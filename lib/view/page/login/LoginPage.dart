import 'package:inventory_app/helper/screen/ScreenSizeHelper.dart';
import 'package:inventory_app/view/page/MainPage.dart';
import 'package:inventory_app/view/widget/custom_button/CustomButton.dart';
import 'package:inventory_app/view/widget/form/GeneralForm.dart';
import 'package:inventory_app/view/widget/text/PoppinsText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  static final String routeName = "loginPage";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formLoginKey = GlobalKey<FormState>();
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PoppinsText(text: "Kasir Online V1",bold: true,size: 40),
              SizedBox(height: 15),
              Container(
                width: ScreenSizeHelper.getWidth(context) * 0.5,
                child: GeneralForm(
                  controller: usernameController,
                  hint: "Username",
                  validateText: "Isi Username Dengan Benar",
                  hidden: false,
                  hintIcon: FontAwesomeIcons.user,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: ScreenSizeHelper.getWidth(context) * 0.5,
                child: GeneralForm(
                  controller: passwordController,
                  hidden: true,
                  hintIcon: FontAwesomeIcons.key,
                  validateText: "Isi Password Dengan Benar",
                  hint: "Password",
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, MainPage.routeName);
                },
                child: Container(
                  width: ScreenSizeHelper.getWidth(context) * 0.5,
                  child: CustomButton(
                    text: "Login",
                    bgColor: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
