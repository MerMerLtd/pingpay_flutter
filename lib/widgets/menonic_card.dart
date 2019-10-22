import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';

class MenonicCard extends StatelessWidget {
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 15),
                  Center(
                    child: Text(
                      "確認您的助記詞",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          letterSpacing: 0.02),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      "按順序選擇助記詞並確保您的助記符寫得正確。",
                      style: TextStyle(
                          color: Color(0xff058cd3),
                          fontSize: 13,
                          letterSpacing: 0.02),
                    ),
                  ),
                  const SizedBox(height: 23),
                  // ++
                  RoundRadiusButton(
                    onPressed: null, //(){},
                    label: '確認',
                    color: Color(0xff06b3e9),
                    textColor: Color(0xffffffff),
                    disabledColor: Color(0xffdadada),
                    disabledTextColor: Color(0xffffffff),
                  ),
                ],
              ),
            )),
      );
  }
}
