import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          color: Colors.grey[200],
          child: Column(
            children: [
              Image.asset('assets/hero2' , height: 150, width: 250,),
              SizedBox(height: 20,),
              Text(
                'GET 20% OFF',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'Leave Your Email and Get Discount,',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50 , vertical: 20,),
                    ),
                    child: Text('Subscribe'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2021 Shopsie',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    'Privacy&Cookies',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Ts&Cs',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
