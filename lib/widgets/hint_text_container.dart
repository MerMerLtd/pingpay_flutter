import 'package:flutter/material.dart';

class HintTextContainer extends StatelessWidget {
  final String hintText;

  const HintTextContainer({Key key, this.hintText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfffff9ef),
        border: Border.all(color: Color(0xffffb742), width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Text(
          hintText,
          style: TextStyle(
            color: Color(0xfff66f2d),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
