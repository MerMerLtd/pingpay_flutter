import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './pages/welcome_page.dart';

void main() => runApp(PingPay());

class PingPay extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PingPay',
      theme: ThemeData(
        primarySwatch: Colors.blue[300],
      ),
      home: WelcomePage(),
    );
  }
}

