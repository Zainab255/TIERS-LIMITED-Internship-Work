import 'package:flutter/material.dart';

class HomeScreen4 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen4> {
  String _submittedText = '';

  void _showInputDialog(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Text'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: "Enter some text"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
            ),
            TextButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  _submittedText = _controller.text;
                });
                Navigator.of(context).pop(); // Dismiss the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Dialog Exercise'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showInputDialog(context),
              child: Text('Show Input Dialog'),
            ),
            SizedBox(height: 20),
            Text(
              'Submitted Text: $_submittedText',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
