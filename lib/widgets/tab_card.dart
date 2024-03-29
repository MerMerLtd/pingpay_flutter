import 'package:flutter/material.dart';
import '../widgets/round_radius_button.dart';

class TabCard extends StatelessWidget {
  const TabCard({
    Key key,
    double balance,
    this.coinIcon,
    this.coinType,
  })  : _balance = balance,
        super(key: key);

  final double _balance;
  final Icon coinIcon;
  final String coinType;

  @override
  Widget build(BuildContext context) {
    final _deviceData = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 10.0, // has the effect of softening the shadow
            spreadRadius: (_deviceData.width - 64) *
                (-.05), // has the effect of extending the shadow
            offset: Offset(
              0.0, // horizontal, > 0 move right, < 0 move left
              (_deviceData.width - 64) * (.05), // vertical, move down 10
            ),
          ),
        ],
      ),
      width: _deviceData.width - 64,
      height: 160,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //++
                // https://medium.com/flutterpub/how-to-use-custom-icons-in-flutter-834a079d977
                coinIcon,
                const SizedBox(width: 8),
                Text(
                  coinType,
                  style: TextStyle(color: Color(0xff9b9b9b), fontSize: 18),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                'coin type is $coinType',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            );
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '加值或提領',
                          // '加值或提領 >',
                          style: TextStyle(
                            color: Color(0xff06b3e9),
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff06b3e9),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: <Widget>[
                  Text(
                    '≈',
                    style: TextStyle(color: Colors.black, fontSize: 36),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _balance.toString(), //dummy data now++
                    style: TextStyle(color: Colors.black, fontSize: 36),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: RoundRadiusButton(
                    height: 40,
                    color: Color(0xff06b3e9),
                    textColor: Color(0xffffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.save_alt),
                        const SizedBox(width: 8),
                        Text(
                          '收款',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1.6,
                            // fontFamily: ,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "receive $coinType coin",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            );
                          });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  flex: 1,
                  child: RoundRadiusButton(
                    height: 40,
                    color: Color(0xff058cd3),
                    textColor: Color(0xffffffff),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(PingPay.ic_send),
                        Icon(Icons.near_me),
                        const SizedBox(width: 8),
                        Text(
                          '付款',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1.6,
                            // fontFamily: ,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "pay with $coinType",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
