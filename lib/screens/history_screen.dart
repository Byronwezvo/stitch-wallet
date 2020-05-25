import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appWhiteColor,
        centerTitle: true,
        title: Text(
          'History',
          style: TextStyle(
            color: appBlackTextColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: appBlackTextColor,
        ),
      ),
    );
  }
}
