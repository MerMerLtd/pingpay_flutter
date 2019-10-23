import 'package:flutter/material.dart';
import './text_input_group.dart';
import './hint_text_container.dart';

class PasswordSettingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            HintTextContainer(
              hintText:
                  "任何交易行為都將受到自訂的密碼保護，請妥善保管密碼並請勿將您的密碼提供給他人，PingPay 不儲存密碼，也無法幫您找回。",
            ),
            const SizedBox(height: 24),
            TextInputGroup(),
          ],
        ),
      ),
    );
  }
}
