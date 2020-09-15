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
        Text('1'),
        Slider(
          min: 0,
          max: 100,
          value: _currentValue,
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        ),
        Text('100')
      ],
    );
  }
}
