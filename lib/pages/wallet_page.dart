import 'package:flutter/material.dart';
import '../widgets/tab_card.dart';
import '../widgets/transaction_card.dart';

import '../providers/ping_pay_icons_icons.dart';
import 'package:pingpay_flutter/providers/ping_pay_icons_icons.dart';

class WalletPage extends StatelessWidget {
  final List<Map<String, dynamic>> dummywalletdata = [
    {
      "balance": 4.0975,
      "coinType": "ETH",
      "coinIcon": Icon(PingPayIcons.ic_eth),
    },
    {
      "balance": 200.0,
      "coinType": "XPA",
      "coinIcon": Icon(PingPayIcons.ic_xpa),
    }
  ];
  final List<Map<String, dynamic>> dummytransactiondata = [
    {
      "from": '0x283740399B3c7823DB0A44327a590E2A26Af799a',
      "time": "2018-04-03 16:29",
      "amount": -80.0,
      "coinType": "ETH",
    },
    {
      "from": '0x283740399B3c7823DB0A44327a590E2A26Af799a',
      "time": "2018-04-03 16:29",
      "amount": 5.0,
      "coinType": "ETH",
    },
    {
      "from": '【韓國】 7-11限定LANDMARK 地標建築QQ軟糖',
      "note": 'Pocky與Kirin午後的紅茶聯名合作',
      "time": "2018-04-03 16:29",
      "amount": 120.0,
      "coinType": "ETH",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xfff7f8f9),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            Container(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummywalletdata.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: <Widget>[
                      index == 0 ? SizedBox(width: 32) : SizedBox(width: 16),
                      TabCard(
                        balance: dummywalletdata[index]['balance'],
                        coinIcon: dummywalletdata[index]['coinIcon'],
                        coinType: dummywalletdata[index]['coinType'],
                      ),
                      index == dummywalletdata.length - 1
                          ? SizedBox(width: 32)
                          : SizedBox(width: 0),
                    ],
                  );
                },
                // children: <Widget>[
                //   TabCard(
                //     balance: 4.0975,
                //     coinIcon: Icon(PingPayIcons.ic_eth),
                //     coinType: 'ETH',
                //   ),
                //   TabCard(
                //     balance: 4.0975,
                //     coinIcon: Icon(PingPayIcons.ic_eth),
                //     coinType: 'ETH',
                //   ),
                // ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '近期紀錄',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,
                      letterSpacing: 0.69,
                      fontWeight: FontWeight.bold,
                      // fontFamily:
                    ),
                  ),
                  GestureDetector(
                      child: Text(
                        '看更多',
                        style: TextStyle(
                            color: Color(0xff06b3e9),
                            fontSize: 12,
                            letterSpacing: 0.69
                            // fontFamily:
                            ),
                      ),
                      onTap: () {
                        // 兩個tab共用一個link 用一個flag來決定要抓哪一種幣的交易資料
                      }),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: ListView.builder(
                  itemCount: dummytransactiondata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        TransactionCard(
                          index: index,
                          dummytransactiondata: dummytransactiondata,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
