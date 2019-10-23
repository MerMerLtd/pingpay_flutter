import 'package:flutter/material.dart';

import '../widgets/mnemonic_card.dart';
import '../widgets/password_setting_card.dart';

class WalletCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        title: Text(
          "創建公鏈錢包",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: MnemonicCard(),
      // body: PasswordSettingCard(),
    );
  }
}