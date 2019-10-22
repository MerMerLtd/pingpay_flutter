import 'package:flutter/material.dart';
import './text_input_group.dart';

class PasswordSettingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 328,
          height: 512,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffff9ef),
                    border: Border.all(color: Color(0xffffb742), width: 1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      "任何交易行為都將受到自訂的密碼保護，請妥善保管密碼並請勿將您的密碼提供給他人，PingPay 不儲存密碼，也無法幫您找回。",
                      style: TextStyle(
                        color: Color(0xfff66f2d),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextInputGroup(),
              ],
            ),
          )),
    );
  }
}
