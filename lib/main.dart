import 'package:BullsEye/control.dart';
import 'package:BullsEye/prompt.dart';
import 'package:BullsEye/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:BullsEye/game.model.dart';

void main() => runApp(BullsEyeApp());

class BullsEyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'BullsEye',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GamePage(title: 'BullsEye'),
    );
  }
}

class GamePage extends StatefulWidget {
  final String title;

  const GamePage({Key key, this.title}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool _alertIsVisible = true;
  GameModel _model;

  @override
  void initState() {
    super.initState();
    _model = GameModel(50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Prompt(targetValue: _model.target),
            Control(
              model: _model,
            ),
            FlatButton(
              onPressed: () {
                _showAlert(context);
              },
              child: Text('Hit Me!'),
            ),
            Score(
              round: _model.totalScore,
              totalScore: _model.round,
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text('Awesome!'),
      onPressed: () {
        Navigator.of(context).pop();
        this._alertIsVisible = false;
        print('Asesome pressed! $_alertIsVisible');
      },
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hello there!'),
          content: Text("The slider's value is ${_model.current}"),
          actions: [
            okButton
          ],
          elevation: 5.0,
        );
      },
    );
  }
}
