import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
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
                'images/Nike Shoe 3.png',
              ),
            ),
            Text(
              'Start Journey\nWith Nike',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.black.withOpacity(1)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Join Millions Of People THat Trust Nike For Quality Shoes',
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
