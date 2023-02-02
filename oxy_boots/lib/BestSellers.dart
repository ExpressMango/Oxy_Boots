import 'package:flutter/material.dart';
import 'package:oxy_boots/Pages/Favourite.dart';

class BestSellers extends StatefulWidget {
  const BestSellers({super.key});

  @override
  State<BestSellers> createState() => _BestSellersState();
}

class _BestSellersState extends State<BestSellers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                    Text(
                      'Best Sellers',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.filter),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FavShoeCard(
                        ColorChoice1: Colors.blue,
                        ColorChoice2: Colors.amber,
                        ShoeName: 'Nike Jordan',
                        ShoePrice: '57',
                        ImageName: 'NikeJ'),
                    FavShoeCard(
                        ColorChoice1: Colors.red,
                        ColorChoice2: Colors.purple,
                        ShoeName: 'Nike Air Max',
                        ShoePrice: '38.99',
                        ImageName: 'placeholder'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FavShoeCard(
                        ColorChoice1: Colors.lightBlue,
                        ColorChoice2: Colors.teal,
                        ShoeName: 'Nike Jordan',
                        ShoePrice: '59.99',
                        ImageName: 'NikeJ'),
                    FavShoeCard(
                        ColorChoice1: Colors.purpleAccent,
                        ColorChoice2: Colors.pink,
                        ShoeName: 'Nike Foam',
                        ShoePrice: '38.99',
                        ImageName: 'NikeD'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FavShoeCard(
                      ColorChoice1: Colors.blueAccent,
                      ColorChoice2: Colors.lightGreen,
                      ShoeName: 'Nike Drifters',
                      ShoePrice: '40.99',
                      ImageName: 'NikeJ',
                    ),
                    FavShoeCard(
                        ColorChoice1: Colors.orangeAccent,
                        ColorChoice2: Colors.deepPurple,
                        ShoeName: 'Nike Superstar',
                        ShoePrice: '63.99',
                        ImageName: 'NikeC'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FavShoeCard(
                        ColorChoice1: Colors.greenAccent,
                        ColorChoice2: Colors.pinkAccent,
                        ShoeName: 'Nike Jordan',
                        ShoePrice: '72.99',
                        ImageName: 'NikeJ'),
                    FavShoeCard(
                        ColorChoice1: Colors.blue,
                        ColorChoice2: Colors.orangeAccent,
                        ShoeName: 'Nike Lifts',
                        ShoePrice: '109.89',
                        ImageName: 'placeholder'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
