import 'package:flutter/material.dart';

import '../widgets/custom_text_input.dart';
import '../widgets/custom_icon_input.dart';
import '../widgets/round_radius_button.dart';
import '../widgets/text_bar.dart';
import '../providers/ping_pay_icons_icons.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key, this.coinType}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
  final String coinType;
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        title: Text(
          "${widget.coinType} 付款",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
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
                CustomIconInput(
                  labelText: '發送至',
                  hintText: '請輸入位址...',
                  obscure: false,
                  suffixIcon: Icon(
                    PingPayIcons.ic_scan,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 16),
                TextBar(
                  title: '現有餘額',
                  textContent: '0.38 ETH',
                ),
                // const SizedBox(height: 16),
                CustomTextInput(
                  labelText: '金額',
                  hintText: '輸入收款金額',
                ),
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
      ),
      // body: PasswordSettingCard(),
    );
  }
}
