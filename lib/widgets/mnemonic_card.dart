import 'package:flutter/material.dart';
import 'package:pingpay_flutter/providers/ping_pay_icons_icons.dart';
import 'package:pingpay_flutter/widgets/hint_text_container.dart';

import '../widgets/round_radius_button.dart';
import '../providers/ping_pay_icons_icons.dart';

class MnemonicCard extends StatelessWidget {

  void _showDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "請勿截圖",
            style: TextStyle(
              color: Color(0xde000000),
              fontSize: 20,
            ),
          ),
          content: Container(
            height: MediaQuery.of(context).size.height * .15,
            child: Column(
              children: <Widget>[
                Text(
                  "擁有助記詞的任何人都可以取得或使用您的資產！請在紙上寫下並保證安全",
                  style: TextStyle(
                    color: Color(0x8a000000),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                Icon(
                  PingPayIcons.screenshot,
                  size: 40,
                  // color: Colors.red,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "我瞭解了",
                style: TextStyle(
                  color: Color(0xff058cd3),
                  fontSize: 14,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      // width: 328,
      // height: 512,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            Center(
              child: Text(
                "備份助記詞",
                style: TextStyle(
                    color: Colors.black, fontSize: 24, letterSpacing: 0.02),
              ),
            ),
            const SizedBox(height: 57),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffedf6f8),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 44),
              ),
            ),
            const SizedBox(height: 15),
            HintTextContainer(
              hintText: '這12個字面的詞彙用於恢復你的公鏈錢包，在紙上正確記下並保存在安全的地方',
            ),
            // ++
            Spacer(),
            RoundRadiusButton(
              onPressed: () {
                _showDialog(context);
              },
              label: '下一步',
              color: Color(0xff06b3e9),
              textColor: Color(0xffffffff),
              disabledColor: Color(0xffdadada),
              disabledTextColor: Color(0xffffffff),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
