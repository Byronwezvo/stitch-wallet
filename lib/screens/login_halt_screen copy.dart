import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/url.dart';
import 'package:stitchwallert/widgets/error_dialog.dart';

class LoginHaltScreen extends StatelessWidget {
  final String number;
  final String password;

  const LoginHaltScreen({
    Key key,
    this.number,
    this.password,
  }) : super(key: key);

  // ::: Make Api call to Monkey Api
  logUserIn(String inputMobile, String inputPassword) async {
    if (number == '' || password == '') {
      // ::: Show Error to user when no input is given
      return ErrorDialog(
        errorMessage: 'Please enter your mobile number and password',
      );
    } else {
      var url = 'http://$monkeyapi/login/$inputMobile/$inputPassword';
      var response = await http.post(Uri.encodeFull(url));
      //print(response.body);
      validateLogIn(response.statusCode, json.decode(response.body));
      print('object');
    }
  }

  validateLogIn(statusCode, data) {
    print(statusCode.runtimeType);
    print(data);

    if (statusCode == 200) {
      print('true');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorBlack,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height / 2,
              child: SpinKitChasingDots(
                color: appColorOrange,
                size: 50.0,
              ),
            ),
            AutoSizeText(
              'Please Wait...',
              minFontSize: 18,
              style: TextStyle(
                color: appColorMaroon,
                fontFamily: 'Nova',
              ),
            )
          ],
        ),
      ),
    );
  }
}
