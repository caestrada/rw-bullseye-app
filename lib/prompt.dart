import 'package:flutter/material.dart';

class Prompt extends StatelessWidget {
  final int targetValue;

  const Prompt({Key key, @required this.targetValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('PUT THE BULLSEYE AS CLOSE AS YO CAN TO'),
        Text('50'),
      ],
    );
  }
}
