import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final bool obscure;

  const CustomTextInput({Key key, this.labelText, this.hintText, this.obscure})
      : super(key: key);

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  // FocusNode _focusNode;
  bool _showPassword = false;

  // @override
  // void dispose() {
  //   super.dispose();
  //   _focusNode.dispose();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _focusNode = new FocusNode();
  //   _focusNode.addListener(_onOnFocusNodeEvent);
  // }

  // _onOnFocusNodeEvent() {
  //   setState(() {
  //     // Re-renders
  //   });
  // }

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
          obscureText: !_showPassword & widget.obscure,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            contentPadding:
                new EdgeInsets.only(top: 11.0, bottom: 11.0, left: 16),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
                color: _showPassword ? Color(0xff06b3e9) : Color(0xffececec),
              ),
            ),
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
