import 'package:BullsEye/textstyles.dart';
import 'package:flutter/material.dart';

class Prompt extends StatelessWidget {
  final int targetValue;

  const Prompt({Key key, @required this.targetValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'PUT THE BULLSEYE AS CLOSE AS YO CAN TO',
          style: LabelTextStyle.bodyText1(context),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${targetValue}',
            style: TargetTextStyle.bodyText1(context),
          ),
        ),
      ],
    );
  }
}
