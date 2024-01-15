import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    var Questions = ['Welcome', 'what\s your name', 'Tell me about yourself'];
    return Column(
      children: [
        ...(Questions.map((item) {
          return Text(item);
        })).toList()
      ],
    );
  }
}
