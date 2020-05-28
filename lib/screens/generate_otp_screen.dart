import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button.dart';

class GenerateOTPScreen extends StatefulWidget {
  @override
  _GenerateOTPScreenState createState() => _GenerateOTPScreenState();
}

class _GenerateOTPScreenState extends State<GenerateOTPScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColorBlack,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColorBlack,
        elevation: 0,
        iconTheme: IconThemeData(
          color: appColorPeach,
        ),
        title: Text(
          'Generate OTP',
          style: TextStyle(
            color: appColorPeach,
            fontFamily: 'Nova',
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: appColorBlack,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/appnametextonly.png',
                    height: (size.height / 3) + 50,
                    fit: BoxFit.fill,
                  ),
                  InputField(
                    hintText: 'Input your secret OTP',
                    hiddenText: false,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  PillButton(
                    name: 'Submit',
                    // TODO : add an onlick to submit the data to server and navigate user to generating OTP
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
