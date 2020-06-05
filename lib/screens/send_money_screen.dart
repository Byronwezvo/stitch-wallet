import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/screens/send_money_halt_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/overwrite_glow_color.dart';
import 'package:stitchwallert/utils/url.dart';
import 'package:stitchwallert/widgets/error_dialog.dart';
import 'package:stitchwallert/widgets/input_field.dart';
import 'package:stitchwallert/widgets/pill_button.dart';
import 'package:stitchwallert/widgets/success_dialog.dart';
import 'package:stitchwallert/widgets/transaction_confimation.dart';

class SendMoneyScreen extends StatefulWidget {
  final List data;
  final String mobile;

  const SendMoneyScreen({
    Key key,
    this.data,
    this.mobile,
  }) : super(key: key);

  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  String senderNumber = '';
  String recieverNumber = '';
  String amountToSend = '';
  String status = '';
  List newData = [];

  // ::: This methoid will be called by the confirm button
  // ::: Makes a request to the server for send-money
  confirmTransaction() async {
    print(senderNumber + ' ' + recieverNumber + ' ' + amountToSend);
    if (recieverNumber == '' && amountToSend == '') {
      // ::: Show Error to user when no input is given
      return showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          errorMessage: 'Please give us input to process',
        ),
      );
    } else {
      var url =
          'http://$monkeyapi/sendmoney/$senderNumber/$recieverNumber/$amountToSend';
      var response = await http.post(Uri.encodeFull(url));
      var formatedResponse = json.decode(response.body);
      checkTransactionStatus(formatedResponse['approve']);
      print(formatedResponse['sender'].runtimeType);
      newData.add(formatedResponse['sender']);
      print(newData);
    }
  }

  // ::: Check if transaction is Approved
  checkTransactionStatus(status) {
    if (status == true) {
      return showDialog(
        context: context,
        builder: (context) => SuccessDialog(
          sucessMessage: 'Your transaction was approved',
          onOkayPress: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext ctx) => HomePage(
                  data: newData,
                ),
              ),
            );
          },
        ),
      );
    } else {
      return showDialog(
        context: context,
        builder: (context) => ErrorDialog(
          errorMessage: 'Your transaction was not approved.',
        ),
      );
    }
  }

  // ::: Set mobile text input value to local variable
  setRecieverNumber(String input) {
    setState(() {
      recieverNumber = input;
    });
  }

  // ::: Set mobile text input value to local variable
  setAmountToSend(String input) {
    setState(() {
      amountToSend = input;
    });
  }

  @override
  void initState() {
    senderNumber = widget.mobile;
    super.initState();
  }

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
          'Send Money',
          style: TextStyle(
            color: appColorPeach,
            fontFamily: 'Nova',
          ),
        ),
      ),
      body: GlowingOverscrollColorChanger(
        color: appColorOrange,
        child: SingleChildScrollView(
          child: Container(
            height: size.height - 3,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height / 3,
                  child: Center(
                    child: Image.asset(
                      'assets/images/appnametextonly.png',
                      height: (size.height / 8),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // :: Reciever Input
                InputField(
                  hintText: 'Reciever number',
                  hiddenText: false,
                  textInput: (String input) => setRecieverNumber(input),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'User must be an Active Stitch User',
                    style: TextStyle(
                      fontFamily: 'Nova',
                      color: appColorMaroon,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // :: Amount to Send input
                InputField(
                  hintText: 'Amount',
                  hiddenText: false,
                  textInput: (String input) => setAmountToSend(input),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'limit to \$200 000 per transction',
                    style: TextStyle(
                      fontFamily: 'Nova',
                      color: appColorMaroon,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                PillButton(
                  name: 'Confirm',
                  onclick: () => showDialog(
                    context: context,
                    builder: (context) => TransactionConfimation(
                      amount: amountToSend,
                      number: recieverNumber,
                      onOkayPress: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext ctx) => SendMoneyHaltScreen(
                              amount: amountToSend,
                              sender: senderNumber,
                              reciever: recieverNumber,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
