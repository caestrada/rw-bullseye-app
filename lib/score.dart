import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({Key key, @required this.totalScore, @required this.round, @required this.onStartOver}) : super(key: key);

  final int round;
  final int totalScore;
  final VoidCallback onStartOver;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {
            onStartOver();
          },
          child: Text('Start Over'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Score'),
              Text('$totalScore'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Round:'),
              Text('$round'),
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
