import 'package:flutter/material.dart';
import 'package:inventory_app/helper/screen/ScreenSizeHelper.dart';
import 'package:inventory_app/view/widget/appbar/CustomAppBar.dart';
import 'LayoutKiri.dart';
import 'LayoutKanan.dart';

class MainPage extends StatefulWidget {
  static final String routeName = 'mainPage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int _stateMode = 0;
  TextEditingController searchController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(ScreenSizeHelper.getHeight(context) * 0.05),
        child: CustomAppBar(title: "Nama Toko"),
      ),
      body: Container(
        color: Color.fromRGBO(234, 234, 234, 1),
        child: Row(
          children: <Widget>[
            LayoutKiri(),
            LayoutKanan(searchController: searchController)
          ],
        ),
      ),
    );
  }
}
