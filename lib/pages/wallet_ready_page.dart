import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class WalletReadyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              // decoration: BoxDecoration(
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image:
              //       AssetImage('assets/images/drawable-xxxhdpi/bg_pattern.png'),
              // ),
              //   gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     colors: <Color>[
              //       Colors.blue[100],
              //       Colors.blue[300],
              //       Theme.of(context).primaryColor,
              //     ],
              //   ),
              // ),
              ),
          //  Container(
          //     child: SvgPicture.asset(
          //       'assets/images.bg_pattern.svg',
          //     ),
          //   ),
          Flex(
            direction: Axis.vertical,
            children: <Widget>[
              const SizedBox(height: 130),
              Container(
                height: 245,
                width: 360,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/drawable-xxxhdpi/graphic_wallet_done.png'),
                  ),
                ),
              ),
              const SizedBox(height: 57),
              Container(
                child: Text(
                  "你的錢包準備好了！",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.05,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Spacer(),
              RoundRadiusButton(
                onPressed: () {},
                label: '確認',
                color: Color(0xffffffff),
                textColor: Color(0xff06b3e9),
                disabledColor: Color(0x8006b3e9),
                disabledTextColor: Color(0x80ffffff),
                enableBorder: true,
              ),
              const SizedBox(height: 64),
            ],
          ),
        ],
      ),
    );
  }
}
