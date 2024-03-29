import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function onChanged;
  final Function onEditingComplete;

  const CustomTextInput({
    Key key,
    this.labelText,
    this.hintText,
    this.keyboardType,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.labelText,
          style: TextStyle(
            color: Color(0xff06b3e9),
            fontSize: 11,
            letterSpacing: 0.49,
            // fontFamily:
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          // focusNode: _focusNode,
          onChanged: widget.onChanged,
          onEditingComplete: widget.onEditingComplete,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16),
                // EdgeInsets.only(top: 11.0, bottom: 11.0, left: 16), --

            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffececec), width: 0.0),
            ),
            // labelStyle: TextStyle(
            //   color: Color(0xff06b3e9),
            //   fontSize: 11,
            //   letterSpacing: 0.49,
            //   // fontFamily:
            // ),
            // labelText: labelText,
            hintStyle: TextStyle(
              color: Color(0xff9b9b9b),
              fontSize: 11,
              letterSpacing: 0.4,
            ),
            hintText: widget.hintText,
          ),
          style: TextStyle(
            color: Color(0xff4a4a4a),
            fontSize: 11,
            letterSpacing: 0.4,
          ),
          // validator: (value) {
          //   if (value.isEmpty) {
          //     return 'Please enter some text';
          //   }
          //   return null;
          // },
        ),
      ],
    );
  }
}
