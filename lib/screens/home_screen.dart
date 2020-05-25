import 'package:flutter/material.dart';
import 'package:stitchwallert/componants/home_bottom_componant.dart';
import 'package:stitchwallert/componants/home_left_drawer.dart';
import 'package:stitchwallert/componants/home_upper_componant.dart';
import 'package:stitchwallert/utils/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorBlack,
      appBar: AppBar(
        backgroundColor: appColorBlack,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: appColorPeach,
          size: 1,
        ),
        title: Text(
          'Home',
          style: TextStyle(
            color: appColorPeach,
            fontFamily: 'Nova',
          ),
        ),
      ),
      drawer: LeftDrawer(),
      body: Column(
        children: <Widget>[
          UpperComponant(
            size: size,
            amount: '\$2 080',
          ),
          BottomComponant(size: size)
        ],
      ),
    );
  }
}
