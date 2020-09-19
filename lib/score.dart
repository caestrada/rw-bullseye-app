import 'package:BullsEye/textstyles.dart';
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
          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          child: Column(
            children: [
              Text(
                'Score',
                style: LabelTextStyle.bodyText1(context),
              ),
              Text(
                '$totalScore',
                style: ScoreNumberTextStyle.headline4(context),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          child: Column(
            children: [
              Text(
                'Round:',
                style: LabelTextStyle.bodyText1(context),
              ),
              Text(
                '$round',
                style: ScoreNumberTextStyle.headline4(context),
              ),
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
