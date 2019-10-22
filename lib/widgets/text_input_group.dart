import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';
import '../widgets/custom_text_input.dart';

class TextInputGroup extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomTextInput(
              labelText: 'Keystore 密碼',
              hintText: '8~20個字元，至少各一個英文數字',
            ),
            const SizedBox(height: 16),
            CustomTextInput(
              labelText: '再次確認密碼',
              hintText: 'key-in password again',
            ),
            // const SizedBox(height: 170),
            Spacer(),
            Center(
              child: RoundRadiusButton(
                onPressed: null, //(){},
                label: '下一步',
                color: Color(0xff06b3e9),
                textColor: Color(0xffffffff),
                disabledColor: Color(0xffdadada),
                disabledTextColor: Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
