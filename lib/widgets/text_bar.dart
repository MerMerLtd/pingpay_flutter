import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  const TextBar({
    Key key,
    this.label,
    this.textContent,
    this.contentDecoration = TextDecoration.none,
    this.labelDecoration = TextDecoration.none,
  }) : super(key: key);

  final String label;
  final String textContent;
  final TextDecoration contentDecoration;
  final TextDecoration labelDecoration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            label, //'現有餘額',
            style: TextStyle(
              color: Color(0xff06b3e9),
              fontSize: 11,
              letterSpacing: 0.49,
              decoration: labelDecoration, //TextDecoration.underline
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
        ),
      ],
    );
  }
}
