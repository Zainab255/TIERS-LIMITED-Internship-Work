import 'package:flutter/material.dart';

class TrendingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(

            child:Text('TRENDING NOW', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          // Text('TRENDING NOW', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FilterButton(title: 'All', isSelected: true),
                FilterButton(title: 'Dresses'),
                FilterButton(title: 'Accessories'),
                FilterButton(title: 'Shoes'),
                // Add more filter buttons here if needed
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TrendingItem(
                  imageUrl: 'https://media.istockphoto.com/id/1337811824/photo/artistic-processing-fantasy-girl-princess-in-pink-dress-stands-in-medieval-room-looking.jpg?s=612x612&w=0&k=20&c=U9_o17XiOWESeaSm9vYbtTSoeuGfdjMESVHP6JRvmsY=',
                  title: 'Olive plain dress',
                  price: '\$13.99',
                ),
                TrendingItem(
                  imageUrl: 'https://media.istockphoto.com/id/864869962/vector/shoes.jpg?s=612x612&w=0&k=20&c=3nh1slvWwNOS_ZPu3fB6AgG2N1vHigDcZN4gJthE2Pw=',
                  title: 'Shoes on heels',
                  price: '\$28.99',
                ),
                TrendingItem(
                  imageUrl: 'https://cdn.pixabay.com/photo/2024/04/18/14/31/ai-generated-8704437_640.jpg',
                  title: 'Olive plain dress',
                  price: '\$13.99',
                ),
                TrendingItem(
                  imageUrl: 'https://media.istockphoto.com/id/1365118618/photo/blue-fashion-purse-handbag-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=VNszfC0cxenqZGhjlr3gqqvzHWREuhdY_H3CKF1B38g=',
                  title: 'Olive plain dress',
                  price: '\$13.99',
                ),
                TrendingItem(
                  imageUrl: 'https://cdn.pixabay.com/photo/2016/11/22/22/29/asian-1850944_640.jpg',
                  title: 'Olive plain dress',
                  price: '\$13.99',
                ),
                // Add more items here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  FilterButton({required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
          foregroundColor: isSelected ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}

class TrendingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  TrendingItem({required this.imageUrl, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120, // Adjust the width as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              height: 150,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(fontSize: 14, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

