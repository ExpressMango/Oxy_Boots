import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined),
                    Text(
                      'Notifications',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Text(
                      'Clear All',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Today',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              NotificationCards(
                  PriceCut: '89.99',
                  OriginalPrice: '109.99',
                  ShoeImage: 'NikeJ',
                  TimeAgo: '6 min ago'),
              SizedBox(
                height: 20,
              ),
              NotificationCards(
                  PriceCut: '89.99',
                  OriginalPrice: '109.99',
                  ShoeImage: 'NikeD',
                  TimeAgo: '26 min ago'),
              SizedBox(
                height: 25,
              ),
              Text(
                'Yesterday',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              NotificationCards(
                  PriceCut: '89.99',
                  OriginalPrice: '109.99',
                  ShoeImage: 'NikePL',
                  TimeAgo: '4 days ago'),
              SizedBox(
                height: 20,
              ),
              NotificationCards(
                  PriceCut: '89.99',
                  OriginalPrice: '109.99',
                  ShoeImage: 'NikeF',
                  TimeAgo: '5 days ago'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget NotificationCards({
  String? PriceCut,
  String? OriginalPrice,
  String? ShoeImage,
  String? TimeAgo,
}) {
  return Container(
    height: 110,
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 90,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                'images/$ShoeImage.png',
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We Have New',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Products With Offers',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$OriginalPrice',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  size: 11,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '$PriceCut',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '$TimeAgo',
              style: TextStyle(color: Colors.green.withOpacity(0.9)),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 4,
              backgroundColor: Colors.blueAccent,
            )
          ],
        )
      ],
    ),
  );
}
