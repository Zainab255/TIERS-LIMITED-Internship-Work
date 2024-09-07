import 'package:flutter/material.dart';
import 'package:untitled/Footer.dart';
import 'category.dart';
import 'footer.dart';
import 'mainBanner.dart';
import 'newarrival.dart';
import 'recommended.dart';
import 'trending.dart';
import 'trusted.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopsie', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainBanner(),
            TrendingSection(),
            CategorySection(),
            TrustedBrands(),
            NewArrivalSection(),
            RecommendedLooks(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
