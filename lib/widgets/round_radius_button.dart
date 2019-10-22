import 'package:flutter/material.dart';

class RoundRadiusButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final Function onPressed;
  final String label;

  RoundRadiusButton({
    @required this.color,
    @required this.textColor,
    @required this.disabledColor,
    @required this.disabledTextColor,
    @required this.onPressed,
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      disabledColor: disabledColor,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      // disabledTextColor: Color(0x80058cd3),
      splashColor: color,
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
      ),
      color: color,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 43.5),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            // color: textColor,
          ),
        ),
      ),
    );
  }
}
