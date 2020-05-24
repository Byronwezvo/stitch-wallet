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
      backgroundColor: appBlackColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBlackColor,
        iconTheme: IconThemeData(
          color: appRedColor,
        ),
        title: Text(
          'Generate OTP',
          style: TextStyle(
            color: appRedColor,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: appBlackColor,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height / 20,
                  ),
                  SizedBox(
                    height: size.width / 2,
                    child: Image.asset('assets/images/appname.png'),
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
