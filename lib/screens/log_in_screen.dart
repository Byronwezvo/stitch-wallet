import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: appBlackColor,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height / 5,
                ),
                Text(
                  'Stitch',
                  style: TextStyle(
                    fontFamily: 'Lisa-Lovely',
                    fontSize: 60.0,
                    color: appRedColor,
                    letterSpacing: 1.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Number',
                      hintText: '07xxxxxxxx',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: appWhiteColor,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: '******',
                    ),
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
