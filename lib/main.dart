import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/create_account_screen.dart';
import 'package:stitchwallert/screens/generate_otp_screen.dart';
import 'package:stitchwallert/screens/history_screen.dart';
import 'package:stitchwallert/screens/home_screen.dart';
import 'package:stitchwallert/screens/log_in_screen.dart';
import 'package:stitchwallert/screens/notifications_screen.dart';
import 'package:stitchwallert/screens/splash_screen.dart';
import 'package:stitchwallert/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stitch Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: appColorMaroon,
      ),
      home: SplashScreen(),
      routes: {
        'homepage': (BuildContext ctx) => HomePage(),
        'notifications': (BuildContext ctx) => NotificationsScreen(),
        'history': (BuildContext ctx) => HistoryScreen(),
        'createAccount': (BuildContext ctx) => CreateAccount(),
        'login': (BuildContext ctx) => LogInScreen(),
        'generateotp': (BuildContext ctx) => GenerateOTPScreen(),
      },
    );
  }
}
