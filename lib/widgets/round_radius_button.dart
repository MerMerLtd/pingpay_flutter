import 'package:flutter/material.dart';

class RoundRadiusButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final Function onPressed;
  final String label;
  final double width;
  final double height;
  final bool enableBorder;
  final Widget child;

  RoundRadiusButton({
    @required this.color,
    @required this.textColor,
    this.disabledColor,
    this.disabledTextColor,
    @required this.onPressed,
    this.label,
    this.enableBorder = false,
    this.child,
    this.height,
    this.width,
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
          side: enableBorder ? BorderSide(color: textColor) : BorderSide.none),
      color: color,
      child: SizedBox(
        width: width != null ? width : 200,
        height: height != null ? height : 44,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 0),
          child: Center(
            child: child != null? child: Text(
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
