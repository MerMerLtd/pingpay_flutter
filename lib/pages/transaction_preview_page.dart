import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';
import '../widgets/custom_text_input.dart';
import '../widgets/text_bar.dart';

class TransactionPreviewPage extends StatelessWidget {
  final List<Map<String, String>> data;

  const TransactionPreviewPage({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        title: Text(
          "預覽交易",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        // width: 328,
        // height: 512,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              ...data.map((item) => TextBar(title:item['title'].toString(),textContent:item['content'].toString())).toList(),
              CustomTextInput(labelText: '金額', hintText: '輸入收款金額',),
              Spacer(),
              RoundRadiusButton(
                color: Color(0xff06b3e9),
                textColor: Colors.white,
                disabledColor: Color(0xffdadada),
                disabledTextColor: Colors.white,
                onPressed: null, //() {},
                enableBorder: true,
                label: '確認付款',
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      // body: PasswordSettingCard(),
    );
  }
}
