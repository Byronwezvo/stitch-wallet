import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/create_account_screen.dart';
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/screens/log_in_screen.dart';
import 'package:stitchwallert/screens/notifications_screen.dart';
import 'package:stitchwallert/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: appWhiteColor,
      ),
      home: LogInScreen(),
      routes: {
        'homepage': (BuildContext ctx) => HomePage(),
        'notifications': (BuildContext ctx) => NotificationsScreen(),
        'createAccount': (BuildContext ctx) => CreateAccount(),
      },
    );
  }
}
