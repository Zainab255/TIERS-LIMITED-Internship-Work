import 'package:flutter/material.dart';


class HomeScreen2 extends StatelessWidget {
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            'Choose an Option',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
                Navigator.pushNamed(context, '/screenA');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Go to Screen A', style: TextStyle(fontSize: 18)),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
                Navigator.pushNamed(context, '/screenB');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Go to Screen B', style: TextStyle(fontSize: 18)),
              ),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Cancel', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialog Exercise'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSimpleDialog(context),
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Text(
          'Welcome to Screen A',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Center(
        child: Text(
          'Welcome to Screen B',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
