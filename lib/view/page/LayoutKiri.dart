import 'package:flutter/material.dart';
import 'package:inventory_app/helper/screen/ScreenSizeHelper.dart';

class LayoutKiri extends StatefulWidget {
  @override
  _LayoutKiriState createState() => _LayoutKiriState();
}

class _LayoutKiriState extends State<LayoutKiri> {
  final List _listViewData = [
    {
      "leadingIcon" :  Icons.local_grocery_store,
      "title": "Daftar Barang",
      "subtitle": "CRUD barang",
      "onTap": () => {},
    },
    {
      "leadingIcon" :  Icons.category,
      "title": "Kategori",
      "subtitle": "CRUD kategori",
      "onTap": () => {},
    },
    {
      "leadingIcon" :  Icons.history,
      "title": "Riwayat transaski",
      "subtitle": "Transaksi kasir",
      "onTap": () => {},
    },
  ];

  int _selectedIndex = 0;

  _onSelected(int index){
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
          child: Column(
        children: <Widget>[
          CustomDrawerHeader(
            name: "Disini nama sesuatu",
            subName: "Islami",
            image: "images/user2.png",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _listViewData.length,
              itemBuilder: (context, index) => Container(
                color: _selectedIndex != null && _selectedIndex == index
                  ? Colors.white
                  : Colors.transparent,
                child: 
                CustomTileList(
                  leadingIcon: _listViewData[index]['leadingIcon'],
                  title: _listViewData[index]['title'],
                  subtitle: _listViewData[index]['subtitle'],
                  index: index,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  final String name;
  final String subName;
  final String image;

  CustomDrawerHeader({this.name, this.subName, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenSizeHelper.getHeight(context) * 0.2,
        child: Container(
          color: Color.fromRGBO(39, 174, 96, 1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      ScreenSizeHelper.getWidth(context) * 0.02,
                      ScreenSizeHelper.getHeight(context) * 0.01,
                      0,
                      ScreenSizeHelper.getHeight(context) * 0.01),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                      left: ScreenSizeHelper.getWidth(context) * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(subName, style: TextStyle(color: Colors.white60)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class CustomTileList extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final int index;

  CustomTileList({this.leadingIcon, this.title, this.subtitle, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {
            _LayoutKiriState()._onSelected(index)
          },
          child: Container(
            color: Colors.transparent,
            margin: EdgeInsets.all(ScreenSizeHelper.getWidth(context) * 0.025),
            child: Row(
              children: <Widget>[
                Icon(
                  leadingIcon,
                  size: ScreenSizeHelper.getWidth(context) * 0.06,
                  color: Color.fromRGBO(39, 174, 96, 1),
                ),
                SizedBox(
                  width: ScreenSizeHelper.getWidth(context) * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenSizeHelper.getWidth(context) * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: ScreenSizeHelper.getWidth(context) * 0.02,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
