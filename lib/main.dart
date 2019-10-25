import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/color_custom.dart';

import './pages/welcome_page.dart';
import './pages/wallet_create_page.dart';
import './pages/wallet_ready_page.dart';
import './pages/wallet_page.dart';

void main() => runApp(PingPay());

class PingPay extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PingPay',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF06b3e9, colorCustom(6, 179, 233)),
        // primaryColor:  Color(0xff06b3e9),
        // textTheme: TextTheme(
        //   //default text style
        //   body1: TextStyle(color: Color(0xFFFFFFFF)),
        // ),
        // accentColor: Colors.red,
        primaryTextTheme: Typography(platform: TargetPlatform.iOS).white,
        textTheme: Typography(platform: TargetPlatform.iOS).white,
      ),
      // home: WelcomePage(),
      home: WalletCreatePage(),
      // home: WalletReadyPage(),
      // home: WalletPage(),
    );
  }
}
