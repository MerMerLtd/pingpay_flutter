import 'package:flutter/material.dart';
import 'package:pingpay_flutter/widgets/hint_text_container.dart';

import '../widgets/round_radius_button.dart';

class MnemonicCard extends StatelessWidget {
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
              onPressed: () {},
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
