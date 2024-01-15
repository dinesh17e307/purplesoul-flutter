import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class FlutterButton extends StatelessWidget {
  final buttonStyle;
  final String buttonText;
  final VoidCallback answerClick;
  const FlutterButton(this.buttonStyle, this.buttonText, this.answerClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      child: ElevatedButton(
        
        child: Text(buttonText),
        onPressed: answerClick,
        style: buttonStyle,
      ),
    );
  }
}
