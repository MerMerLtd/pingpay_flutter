import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';
import '../widgets/hint_text_container.dart';
import '../widgets/custom_text_input.dart';

class RecepitsPage extends StatefulWidget {
  final String coinType;
  final String address;

  const RecepitsPage({Key key, this.coinType, this.address}) : super(key: key);

  @override
  _RecepitsPageState createState() => _RecepitsPageState();
}

class _RecepitsPageState extends State<RecepitsPage> {
  String data = '';
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xfff7f8f9),
      appBar: AppBar(
        title: Text(
          '${widget.coinType} 收款',
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
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomTextInput(
                  hintText: '請輸入您要收取的金額，或不輸入，由付款方決定',
                  labelText: '收款金額',
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  // keyboardType: TextInputType.emailAddress,
                  controller: textEditingController,
                  onChanged: (value) {
                    setState(() {
                      // update QR code
                      data = value;
                    });
                  },
                  // onEditingComplete: () {
                  //   setState(() {
                  //     // update QR code
                  //     data = textEditingController.text;
                  //   });
                  // },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      // color: Colors.red,
                      child: Center(
                        //++ will be change to QR code
                        child: CircleAvatar(
                          //显示input data
                          radius: 30.0,
                          child: Text(
                            data,
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    widget.address,
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14,
                      // fontFamily: ,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RoundRadiusButton(
                        color: Colors.white,
                        textColor: Color(0xff06b3e9), //Colors.white,
                        onPressed: () {},
                        enableBorder: true,
                        label: '複製地址',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: RoundRadiusButton(
                        color: Colors.white,
                        textColor: Color(0xff06b3e9), //Colors.white,
                        onPressed: () {},
                        enableBorder: true,
                        label: '保存至相簿',
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Center(
                  child: HintTextContainer(
                    hintText: '僅可接受ETH，請勿用來接受其他幣種喔！',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
      // body: PasswordSettingCard(),
    );
  }
}
