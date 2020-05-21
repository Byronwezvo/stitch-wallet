import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/input_field.dart';

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
                  height: size.height / 8,
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
                InputField(
                  hintText: 'Mobile Number',
                  hiddenText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                InputField(
                  hintText: 'Password',
                  hiddenText: true,
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => print('works'),
                  child: Container(
                    height: 50,
                    width: 180,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 30,
                          ),
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: appRedColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Text(
                          'Log in',
                          style: TextStyle(
                            color: appRedColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: appWhiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
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
