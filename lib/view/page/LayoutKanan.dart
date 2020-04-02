import 'package:flutter/material.dart';
import 'package:inventory_app/view/widget/form/SearchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inventory_app/helper/screen/ScreenSizeHelper.dart';

class LayoutKanan extends StatelessWidget {
  const LayoutKanan({
    Key key,
    @required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Color.fromRGBO(39, 174, 96, 1),
                height: ScreenSizeHelper.getHeight(context) * 0.2,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment(-0.95, 0),
                          child: Text(
                            "Produk",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              flex: 10,
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom:
                                        ScreenSizeHelper.getHeight(context) *
                                            0.02,
                                    left: ScreenSizeHelper.getWidth(context) *
                                        0.012),
                                child: SearchBar(
                                  controller: searchController,
                                  hint: "Search",
                                  hidden: false,
                                  hintIcon: FontAwesomeIcons.search,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                          FontAwesomeIcons.filter,
                                          color: Colors.white,
                                        ))),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                            FontAwesomeIcons.sortAmountDown,
                                            color: Colors.white))),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Flexible(
                  fit: FlexFit.tight,
                  child:
                      // Scaffold(
                      //   appBar: AppBar(name: Text("Tes"),),
                      //   floatingActionButton: FloatingActionButton(
                      //     onPressed: () {},
                      //     child: Icon(Icons.add),
                      //   ),
                      // )
                      Stack(
                    children: <Widget>[
                      ListView(
                        children: <Widget>[
                          CustomTileList(
                            leadingIcon: Icons.account_box,
                            name: "Ayam Goreng",
                            stok: "15",
                            price: "15.000",
                            kategori: "makanan",
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment(0.9, 0.8),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

class CustomTileList extends StatelessWidget {
  final IconData leadingIcon;
  final String name;
  final String stok;
  final String price;
  final String kategori;
  final Function onTap;

  CustomTileList(
      {this.leadingIcon,
      this.name,
      this.stok,
      this.kategori,
      this.price,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {},
          child: Container(
            color: Colors.transparent,
            margin: EdgeInsets.all(ScreenSizeHelper.getWidth(context) * 0.02),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  leadingIcon,
                  size: ScreenSizeHelper.getWidth(context) * 0.06,
                  color: Color.fromRGBO(39, 174, 96, 1),
                ),
                SizedBox(
                  width: ScreenSizeHelper.getWidth(context) * 0.02,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    ScreenSizeHelper.getWidth(context) * 0.025,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ("Stok : ")+stok,
                            style: TextStyle(
                              fontSize:
                                  ScreenSizeHelper.getWidth(context) * 0.02,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            kategori,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    ScreenSizeHelper.getWidth(context) * 0.02,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ("Rp.") + price,
                            style: TextStyle(
                              fontSize:
                                  ScreenSizeHelper.getWidth(context) * 0.02,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
