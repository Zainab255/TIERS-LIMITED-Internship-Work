import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300, // Adjust the height as needed
          child: Stack(
            children: [
              ClipRect(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2016/11/22/22/29/asian-1850944_640.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SEASON SALE',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Up to 60% Off',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10), // Space between image and button
        ElevatedButton(
          onPressed: () {},
          child: Text('Shop Now'),
        ),
        SizedBox(height: 10), // Space between button and image
        Image.network(
          'https://media.istockphoto.com/id/535200347/photo/beautiful-woman-outside-in-a-park.jpg?s=612x612&w=0&k=20&c=YCRqf5kDOXR9yJ2rbQ_uG_pBwR_RbqUEJFTEKrsjB18=', // Replace with your image URL
          height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
