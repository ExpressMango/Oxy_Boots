import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 50,
            ),
            Image.asset('images/Nike Shoe 1.png'),
            Spacer(),
            Text(
              'Summer Shoes\nNike 2022',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.black.withOpacity(1)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Make Shopping For Your\nSummer Shoes Fun!!',
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
