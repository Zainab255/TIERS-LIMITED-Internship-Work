import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue[50],
      child: Column(
        children: [
          Text('GET 20% OFF', style: TextStyle(fontSize: 24)),
          SizedBox(height: 10),
          Text('Look sharp with our exclusive discounts'),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text('Subscribe')),
          SizedBox(height: 10),
          Text('© 2023 Shoppeie'),
        ],
      ),
    );
  }
}
