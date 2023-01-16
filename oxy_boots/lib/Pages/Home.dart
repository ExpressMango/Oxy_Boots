import 'package:flutter/material.dart';
import 'package:oxy_boots/SignIn/Signinfunctions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {}, child: Image.asset('images/Menu.png')),
            Column(
              children: [
                Text(
                  'Store ocation',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red[400],
                    ),
                    Text(
                      'Mondolibug,Sylhet',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
            GestureDetector(onTap: () {}, child: Image.asset('images/Cart.png'))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        textfield(Icon(null),
            obscure: false,
            iconP: Icon(Icons.search),
            Text: 'Looking For Shoes?'),
        SizedBox(height: 20),
        Container(
            height: 52,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              LogoContainer(
                  CompanyImages: 'images/Frame 7.png', CompanyName: 'Nike'),
              SizedBox(
                width: 5,
              ),
              LogoContainer(
                  CompanyImages: 'images/Frame 8.png', CompanyName: 'Puma'),
              SizedBox(
                width: 5,
              ),
              LogoContainer(
                  CompanyImages: 'images/Frame 9.png',
                  CompanyName: 'UnderAmour'),
              SizedBox(
                width: 5,
              ),
              LogoContainer(
                  CompanyImages: 'images/Frame 10.png', CompanyName: 'Adidas'),
              SizedBox(
                width: 5,
              ),
              LogoContainer(
                  CompanyImages: 'images/Frame 11.png',
                  CompanyName: 'Converse'),
            ])),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Shoes',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'See all',
                style: TextStyle(color: Color(0xff5B9EE1)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ShoeCard(
                    ShoeImage: 'images/Group 114.png',
                    Price: '\$190',
                    Shoetype: 'Nike Air Max'),
                ShoeCard(
                    ShoeImage: 'images/Nike Blue.png',
                    Price: '\$220',
                    Shoetype: 'Nike Jordan'),
                ShoeCard(
                    ShoeImage: 'images/Group 114.png',
                    Price: '\$120',
                    Shoetype: 'Nike Foam'),
                ShoeCard(
                    ShoeImage: 'images/Group 114.png',
                    Price: '\$250',
                    Shoetype: 'Nike Racer Pro'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Arrivals',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 12, color: Color(0xff5B9EE1)),
              ),
            ],
          ),
        ),
        Container(
          height: 117,
          width: 400,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BEST CHOICE',
                        style:
                            TextStyle(color: Color(0xff5b9ee1), fontSize: 18),
                      ),
                      Text(
                        'Nike Air Jordan',
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                      Text(
                        '\$849.69',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  Column(
                    children: [Image.asset('images/Nike Blue.png')],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}
