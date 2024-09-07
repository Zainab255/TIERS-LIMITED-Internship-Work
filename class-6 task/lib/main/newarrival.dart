import 'package:flutter/material.dart';

class NewArrivalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('NEW ARRIVAL', style: TextStyle(color: Colors.white, fontSize: 24)),
          Text('Fall 2021', style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 10),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwIH4p3jQ2zT4wXlsLoqOgva_QAQkgGU-5Mw&s', height: 150, width: 400, fit: BoxFit.cover),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text('Explore')),
        ],
      ),
    );
  }
}
