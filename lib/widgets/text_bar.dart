import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  const TextBar({
    Key key,
    this.title,
    this.textContent,
    this.contentDecoration = TextDecoration.none,
    this.titleDecoration = TextDecoration.none,
  }) : super(key: key);

  final String title;
  final String textContent;
  final TextDecoration contentDecoration;
  final TextDecoration titleDecoration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title, //'現有餘額',
            style: TextStyle(
              color: Color(0xff06b3e9),
              fontSize: 11,
              letterSpacing: 0.49,
              decoration: titleDecoration, //TextDecoration.underline
              // fontFamily:
            ),
          ),
          padding: EdgeInsets.only(bottom: 8),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            textContent, //'0.38 ETH',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 14,
              letterSpacing: 0.62,
              decoration: contentDecoration, //TextDecoration.underline
              // fontWeight: FontWeight.bold,
              // fontFamily:
            ),
          ),
          padding: EdgeInsets.only(bottom: 16),
        ),
      ],
    );
  }
}
