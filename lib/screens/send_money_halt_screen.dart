import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/url.dart';
import 'package:http/http.dart' as http;
import 'package:stitchwallert/widgets/connection_error_dialog.dart';
import 'package:stitchwallert/widgets/error_dialog.dart';
import 'package:stitchwallert/widgets/success_dialog.dart';

import 'home_screen.dart';

class SendMoneyHaltScreen extends StatefulWidget {
  final String sender;
  final String reciever;
  final String amount;

  const SendMoneyHaltScreen({
    Key key,
    this.sender,
    this.reciever,
    this.amount,
  }) : super(key: key);
  @override
  _SendMoneyHaltScreenState createState() => _SendMoneyHaltScreenState();
}

class _SendMoneyHaltScreenState extends State<SendMoneyHaltScreen> {
  String sender, receiver, amount;
  List newData = [];

  // ::: This methoid will be called by the confirm button
  // ::: Makes a request to the server for send-money
  // confirmTransaction() async {
  //   print(sender + ' ' + receiver + ' ' + amount);
  //   if (recieverNumber == '' && amountToSend == '') {
  //     // ::: Show Error to user when no input is given
  //     return showDialog(
  //       context: context,
  //       builder: (context) => ErrorDialog(
  //         errorMessage: 'Please give us input to process',
  //       ),
  //     );
  //   } else {
  // var url =
  //     'http://$monkeyapi/sendmoney/$senderNumber/$recieverNumber/$amountToSend';
  // var response = await http.post(Uri.encodeFull(url));
  // var formatedResponse = json.decode(response.body);
  // checkTransactionStatus(formatedResponse['approve']);
  // print(formatedResponse['sender'].runtimeType);
  // newData.add(formatedResponse['sender']);
  //     print(newData);
  //   }
  // }

  processTransaction() async {
    var url = 'http://$monkeyapi/sendmoney/$sender/$receiver/$amount';
    var response = await http.post(Uri.encodeFull(url));
    var formatedResponse = json.decode(response.body);
    checkTransactionStatus(formatedResponse['approve']);
    print(formatedResponse['sender'].runtimeType);
    newData.add(formatedResponse['sender']);
  }

  // ::: Check if transaction is Approved
  checkTransactionStatus(status) {
    if (status == true) {
      return showDialog(
        context: context,
        builder: (context) => SuccessDialog(
          sucessMessage: 'Your transaction was approved',
          onOkayPress: () {
            Navigator.pop(context);
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

  @override
  void initState() {
    sender = widget.sender;
    receiver = widget.reciever;
    amount = widget.amount;
    super.initState();

    // ::: Call the Log in method
    Future.delayed(
      Duration(seconds: 3),
      () => processTransaction(),
    );

    // ::: Add logic that if request is not made _seconds we throw an Error dialog
    Future.delayed(
      Duration(minutes: 1),
      () {
        // ::: Display an Error Dialog
        return showDialog(
          context: context,
          builder: (context) => ConnectionErrorDialog(
            onOkayClick: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            errorMessage:
                'Connection timeout, Please check you connection settings',
          ),
        );
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
