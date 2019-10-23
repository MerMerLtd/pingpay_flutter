import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key key,
    this.index,
    @required this.dummytransactiondata,
  }) : super(key: key);

  final List<Map<String, dynamic>> dummytransactiondata;
  final int index;

  @override
  Widget build(BuildContext context) {
    final _deviceData = MediaQuery.of(context).size;
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Color(0x22000000),
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: (_deviceData.width - 32) *
                  (-.05), // has the effect of extending the shadow
              offset: Offset(
                0.0, // horizontal, > 0 move right, < 0 move left
                (_deviceData.width - 32) * (.05), // vertical, move down 10
              ),
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              dummytransactiondata[index]["from"],
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                letterSpacing: 0.62,
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child:
                   dummytransactiondata[index]["note"] != null
                      ? Text(
                          dummytransactiondata[index]["note"],
                          style: TextStyle(
                            color: Color(0xff4a4a4a),
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        )
                      : Text(""),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 6),
                      child: Text(
                        dummytransactiondata[index]["time"],
                        style: TextStyle(
                          color: Color(0xff9b9b9b),
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                    Spacer(),
                    dummytransactiondata[index]["amount"] > 0
                        ? Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.only(bottom: 6),
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4)),
                            child: Icon(
                              Icons.remove,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                    //Icon(PingPayIcons.ic_add),
                    const SizedBox(width: 8),
                    Text(
                      dummytransactiondata[index]["amount"].abs().toString(),
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24,
                        letterSpacing: 0,
                        // decoration: TextDecoration.underline
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      margin: EdgeInsets.only(bottom: 6),
                      child: Text(
                        dummytransactiondata[index]["coinType"],
                        style: TextStyle(
                          color: Color(0xff9b9b9b),
                          fontSize: 12,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
