import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Image(
              image: AssetImage(
                'images/Nike Shoe 2.png',
              ),
            ),
            Text(
              'Follow Latest\nShoe Style',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.black.withOpacity(1)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Smart, Gorgeous & Fashionable\nCollections',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.black.withOpacity(0.6)),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
