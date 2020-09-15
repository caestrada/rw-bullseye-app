import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({Key key, @required this.totalScore, @required this.round}) : super(key: key);

  final int round;
  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text('Start Over'),
        ),
        Text('Score'),
        Text('99999'),
        Text('Round:'),
        Text('9999'),
        FlatButton(
          onPressed: () {},
          child: Text('Info'),
        ),
      ],
    );
  }
}
