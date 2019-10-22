import 'package:flutter/material.dart';

class RoundRadiusButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final Function onPressed;
  final String label;
  final double width;
  final bool enableBorder;

  RoundRadiusButton(
      {@required this.color,
      @required this.textColor,
      @required this.disabledColor,
      @required this.disabledTextColor,
      @required this.onPressed,
      @required this.label,
      this.enableBorder = false,
      this.width});
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
        side: BorderSide(color: enableBorder ? textColor : color)
      ),
      color: color,
      child: SizedBox(
        width: width != null ? width : 200,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 0),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                // color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
