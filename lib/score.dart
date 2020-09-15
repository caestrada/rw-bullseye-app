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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Score'),
              Text('99999'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Round:'),
              Text('9999'),
            ],
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('Info'),
        ),
      ],
    );
  }
}
