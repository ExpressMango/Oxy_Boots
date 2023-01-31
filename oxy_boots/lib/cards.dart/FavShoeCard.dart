import 'package:flutter/material.dart';

Widget FavShoeCard() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Icon(
            Icons.favorite_outline,
            color: Colors.red,
          ),
          Image.asset('images/placeholder.png'),
          Text(
            'BEST SELLER',
            style: TextStyle(
                color: Color(
                  0xff5B9EE1,
                ),
                fontSize: 15),
          ),
          Text(
            'Nike Air Max',
            style: TextStyle(
                color: Color(
                  0xff5B9EE1,
                ),
                fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$37.99',
                style: TextStyle(
                    color: Color(
                      0xff5B9EE1,
                    ),
                    fontSize: 15),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blue,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.black,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
