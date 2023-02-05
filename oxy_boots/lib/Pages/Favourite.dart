import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopRow(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FavShoeCard(
                      ShoeName: 'Nike Jordan',
                      ShoePrice: '57',
                      ImageName: 'NikeJ'),
                  FavShoeCard(
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
                      ShoeName: 'Nike Club Max',
                      ShoePrice: '105',
                      ImageName: 'NikeC'),
                  FavShoeCard(
                      ShoeName: 'Nike Drift',
                      ShoePrice: '83',
                      ImageName: 'NikeD'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget TopRow() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back_ios_new),
          ),
          Text(
            'Favourite',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.favorite_outline),
          ),
        ],
      ),
    ),
  );
}

Widget FavShoeCard({
  final String? ShoeName,
  final String? ShoePrice,
  final String? ImageName,
  final Color? ColorChoice1,
  final Color? ColorChoice2,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Container(
      color: Colors.white,
      height: 245,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'images/$ImageName.png',
              scale: 0.5,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'BEST SELLER',
                  style: TextStyle(
                      color: Color(
                        0xff5B9EE1,
                      ),
                      fontSize: 15),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '$ShoeName',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$ShoePrice',
                  style: TextStyle(
                      color: Color(
                        0xff5B9EE1,
                      ),
                      fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: ColorChoice1,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: ColorChoice2,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
