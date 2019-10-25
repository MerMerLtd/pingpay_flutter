import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';
import '../widgets/hint_text_container.dart';

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
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '收款金額',
                style: TextStyle(
                  color: Color(0xff06b3e9),
                  fontSize: 11,
                  letterSpacing: 0.49,
                  // fontFamily:
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: textEditingController,
                // onEditingComplete: () {
                //   setState(() {
                //     // update QR code
                //     data = textEditingController.text;
                //   });
                // },
                onChanged: (value) {
                  setState(() {
                    // update QR code
                    data = value;
                  });
                },
                // focusNode: _focusNode,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  contentPadding:
                      new EdgeInsets.only(top: 11.0, bottom: 11.0, left: 16),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xffececec), width: 0.0),
                  ),
                  hintStyle: TextStyle(
                    color: Color(0xff9b9b9b),
                    fontSize: 11,
                    letterSpacing: 0.4,
                  ),
                  hintText: '請輸入您要收取的金額，或不輸入，由付款方決定',
                ),
                style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontSize: 11,
                  letterSpacing: 0.4,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    // color: Colors.red,
                    child: Center( //++ will be change to QR code
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
      // body: PasswordSettingCard(),
    );
  }
}
