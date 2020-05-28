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
      backgroundColor: appColorBlack,
      appBar: AppBar(
        backgroundColor: appColorBlack,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'History',
          style: TextStyle(
            color: appColorPeach,
          ),
        ),
        iconTheme: IconThemeData(
          color: appColorPeach,
        ),
      ),
      body: null,
    );
  }
}
