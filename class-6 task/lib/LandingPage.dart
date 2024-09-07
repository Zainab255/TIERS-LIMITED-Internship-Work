import 'package:flutter/material.dart';
import 'LoginPage.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Shopsie',
              style: TextStyle(
                color: Color(0xFF626BFC),
                fontSize: 62,
                fontWeight: FontWeight.w900,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'The best way to style your life.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 170),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF626BFC),
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
