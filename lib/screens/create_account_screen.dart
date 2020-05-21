import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBlackColor,
        title: Text('Create a new Account'),
      ),
      body: Container(
        color: appBlackColor,
      ),
    );
  }
}
