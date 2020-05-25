import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/clickable_text.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appColorBlack,
        elevation: 0,
        iconTheme: IconThemeData(
          color: appColorPeach,
        ),
        title: Text(
          'Create a new Account',
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
                  SizedBox(
                    height: size.height / 500,
                  ),
                  Image.asset(
                    'assets/images/appnametextonly.png',
                    height: (size.height / 3) + 50,
                    fit: BoxFit.fill,
                  ),
                  InputField(
                    hintText: 'Mobile Number',
                    hiddenText: false,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InputField(
                    hintText: 'Password',
                    hiddenText: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  PillButton(
                    route: 'generateotp',
                    name: 'Sign Up',
                    // TODO : add an onlick to submit the data to server and navigate user to generating OTP
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClickableText(
                    text: 'Terms and Conditions',
                    route: '', // TODO : Create a route to terms and conditons
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
