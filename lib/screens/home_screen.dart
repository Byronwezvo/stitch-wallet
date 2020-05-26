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
    return WillPopScope(
      onWillPop: () => buildShowDialog(context),
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              UpperComponant(
                size: size,
                amount: '\$2080.15',
              ),
              BottomComponant(size: size)
            ],
          ),
        ),
      ),
    );
  }

// Method for showing dialog on back button click
  Future<bool> buildShowDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 30,
        ),
        backgroundColor: appColorKhaki,
        title: Text(
          'Warning',
          style: TextStyle(
            fontFamily: 'Nova',
            color: appColorPeach,
          ),
        ),
        content: Text(
          'Do you really want to exit',
          style: TextStyle(
            fontFamily: 'Nova',
            color: appColorPeach,
          ),
        ),
        actions: [
          FlatButton(
            child: Text(
              'Yes',
              style: TextStyle(
                fontFamily: 'Nova',
                color: appColorOrange,
              ),
            ),
            onPressed: () => Navigator.pop(context, true),
          ),
          FlatButton(
            child: Text(
              'No',
              style: TextStyle(
                fontFamily: 'Nova',
                color: appColorOrange,
              ),
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
        ],
      ),
    );
  }
}
