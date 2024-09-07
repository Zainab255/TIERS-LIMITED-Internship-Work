import 'package:flutter/material.dart';


class HomeScreen5 extends StatelessWidget {
  void _showCounterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CounterDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Dialog Exercise'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showCounterDialog(context),
          child: Text('Show Counter Dialog'),
        ),
      ),
    );
  }
}

class CounterDialog extends StatefulWidget {
  @override
  _CounterDialogState createState() => _CounterDialogState();
}

class _CounterDialogState extends State<CounterDialog> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Counter Dialog'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Current counter value:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            '$_counter',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Close'),
        ),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
