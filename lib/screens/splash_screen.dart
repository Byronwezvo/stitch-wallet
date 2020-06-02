import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stitchwallert/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, 'login');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorBlack,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/appicon.png',
                height: size.height / 6,
              ),
            ),
            SizedBox(
              height: size.height / 3,
              child: SpinKitChasingDots(
                color: appColorOrange,
                size: 40.0,
              ),
            ),
            Center(
              child: Text(
                'developed by Byron Wezvo',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Nova',
                  color: appColorMaroon,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
