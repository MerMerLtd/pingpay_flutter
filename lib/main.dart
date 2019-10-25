import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/color_custom.dart';

import './pages/welcome_page.dart';
import './pages/wallet_create_page.dart';
import './pages/wallet_ready_page.dart';
import './pages/wallet_page.dart';
import './pages/payment_page.dart';
import './pages/recepits_page.dart';
import './pages/transaction_preview_page.dart';

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
      // home: WalletCreatePage(),
      // home: WalletReadyPage(),
      // home: WalletPage(),
      // home: RecepitsPage(coinType: 'ETH', address: '0x283740399B3c7823DB0A44327a590E2A26Af799a',),
      // home: PaymentPage(coinType: 'ETH'),
      home: TransactionPreviewPage(
        data: [
          {
            'title': '發送至',
            'content': '泰德集團員工福利 Snack bar',
          },
          {
            'title': '地址',
            'content': '0x70e9e8beB95fb97f9a38b0x70e9e8beB95fb97f9a38b',
          },
          // {
          //   'title': '品名',
          //   'content': '孔雀泡芙 - 阿華田泡芙',
          // },
          {
            'title': '現有餘額',
            'content': '0.38 ETH',
          },
        ],
      ),
    );
  }
}
