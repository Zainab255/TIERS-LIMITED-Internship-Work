import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Item'),
          content: Text('Are you sure you want to delete this item?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
            ),
            TextButton(
              child: Text('Delete'),
              onPressed: () {
                // Perform the delete operation
                Navigator.of(context).pop(); // Dismiss the dialog
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Item deleted')),
                );
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
        title: Text('Delete Item Exercise'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showDeleteDialog(context),
          child: Text('Delete Item'),
        ),
      ),
    );
  }
}
