import 'package:flutter/material.dart';
import 'package:BullsEye/game.model.dart';

class Control extends StatefulWidget {
  const Control({Key key, @required this.model}) : super(key: key);
  final GameModel model;

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  double _currentValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            '1',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Slider(
            min: 0,
            max: 100,
            value: widget.model.current.toDouble(),
            onChanged: (value) {
              setState(() {
                _currentValue = value;
                widget.model.current = value.toInt();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 64.0),
          child: Text(
            '100',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
