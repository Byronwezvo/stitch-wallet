import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/log_in_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.white,
      ),
      home: LogInScreen(),
    );
  }
}
