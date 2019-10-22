import 'package:flutter/material.dart';

import '../widgets/round_radius_button.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    AssetImage('assets/images/drawable-xxxhdpi/bg_pattern.png'),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.blue[100],
                  Colors.blue[300],
                  Theme.of(context).primaryColor,
                ],
              ),
            ),
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
                height: 85,
                width: 205,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/drawable-xxxhdpi/logo_pingpay.png'),
                  ),
                ),
              ),
              const SizedBox(height: 57),
              Container(
                child: Text(
                  "Welcome！",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.05,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              const SizedBox(height: 64),
              RoundRadiusButton(
                onPressed: _value ? () {} : null,
                label: '創建公鏈錢包',
                color: Color(0xffffffff),
                textColor: Color(0xff058cd3),
                disabledColor: Color(0x80ffffff),
                disabledTextColor: Color(0x80058cd3),
              ),
              const SizedBox(height: 24),
              RoundRadiusButton(
                onPressed: _value ? () {} : null,
                label: '創建公鏈錢包',
                color: Color(0xff2fe0ff),
                textColor: Color(0xffffffff),
                disabledColor: Color(0x802fe0ff),
                disabledTextColor: Color(0x80ffffff),
              ),
              const SizedBox(height: 108),
              Container(
                width: 320,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0x4d000000),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _value = !_value;
                            });
                          },
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    _value ? Colors.white : Color(0x80c8c8c8),
                                width: 2,
                              ),
                            ),
                            child: _value
                                ? Icon(
                                    // Icons.check,
                                    IconData(59510, //https://flutter-academy.com/flutter-use-font-icons/ ++
                                        fontFamily: 'MaterialIcons'),
                                    size: 10.0,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.check,
                                    size: 10.0,
                                    color: Color(0x80c8c8c8),
                                  ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        child: Text(
                          "隱私權政策與服務條款",
                          style: TextStyle(color: Color(0xffffffff),
                          fontSize: 12,
                          letterSpacing: 0.03,
                          decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 44,
              //   width: 320,
              //   child: RaisedButton(
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              //     textColor: Color(0xffffffff),
              //     color: Color(0x4d000000),
              //     onPressed: () {},
              //     elevation: 0,
              //     child: CheckboxListTile(
              //       onChanged: (bool value) {},
              //       value: false,
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
