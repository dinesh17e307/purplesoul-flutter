import 'package:flutter/material.dart';

class FlutterTextField extends StatelessWidget {
  final String textLabel;
  final String TextHintLabel;
  final textFillColor;
  final bool isError;
  final String helperText;
  final bool obscureText;
  final getLoginDetails;
  const FlutterTextField(this.textLabel, this.TextHintLabel, this.textFillColor,
      this.helperText, this.isError, this.obscureText, this.getLoginDetails);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: obscureText,
        onChanged: (value) => getLoginDetails([value, TextHintLabel]),
        obscuringCharacter: "*",
        style: TextStyle(
            color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),
        decoration: InputDecoration(
          filled: true,
          fillColor: textFillColor,
          helperStyle: TextStyle(color: Colors.white),
          helperText: helperText,
          errorText: isError ? '$TextHintLabel should not empty' : '',
          errorStyle: TextStyle(color: Colors.amber),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: textLabel,
          hintText: TextHintLabel,
        ),
      ),
    );
  }
}
