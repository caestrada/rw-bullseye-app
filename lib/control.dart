import 'package:flutter/material.dart';

class Control extends StatefulWidget {
  const Control({Key key}) : super(key: key);

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
          padding: const EdgeInsets.all(32.0),
          child: Text('1'),
        ),
        Expanded(
          child: Slider(
            min: 0,
            max: 100,
            value: _currentValue,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text('100'),
        )
      ],
    );
  }
}
