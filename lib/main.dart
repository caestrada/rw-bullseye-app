import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to my first app!',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            FlatButton(
              onPressed: () {
                this._alertIsVisible = true;
                _showAlert(context);
                print('Button pressed!');
              },
              child: Text(
                'Hit Me!',
                style: TextStyle(color: Colors.blue),
              ),
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
          content: Text('This is my first pop-up.'),
          actions: [
            okButton
          ],
          elevation: 5.0,
        );
      },
    );
  }
}
