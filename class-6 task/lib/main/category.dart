import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0), // Optional padding for better spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child : Text('Actual Categories', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),),

          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryItem(
                imageUrl: 'https://media.istockphoto.com/id/1296705483/photo/make-up-products-prsented-on-white-podiums-on-pink-pastel-background.webp?b=1&s=612x612&w=0&k=20&c=XZA2CJT5XzP2NMrav4zYcyhqPIANdCpMFO6s2CdLtao=',
                title: 'Outerwear',
              ),
              CategoryItem(
                imageUrl: 'https://media.istockphoto.com/id/1453723844/photo/dressing-room-interior-with-shoes-bags-and-hanging-clothes.jpg?s=612x612&w=0&k=20&c=LObEMql56AUQjLnBtV0OK5zKKhWDgSYztxoKCrSqBtw=',
                title: 'Outerwear',
              ),
              CategoryItem(
                imageUrl: 'https://media.istockphoto.com/id/1394033419/photo/luxury-fashion-store-front-in-modern-shopping-mall.jpg?s=612x612&w=0&k=20&c=RlaY4uZLg2kqvmDBBkk_dkAUfjUdJLi79umilrWcKl8=',
                title: 'Outerwear',
              ),
              // Add more categories here
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  CategoryItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10), // Spacing between category items
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, height: 200, width: 500, fit: BoxFit.cover), // Adjusted image height
          SizedBox(height: 5),
          Center(child : Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),),// Spacing between image and title

        ],
      ),
    );
  }
}

