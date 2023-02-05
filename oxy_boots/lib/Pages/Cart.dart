import 'dart:async';

import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int NoOfShoes = 0;

  void NoOfShoeRise() {
    setState(() {
      NoOfShoes++;
    });
  }

  void NoOfShoeFall() {
    setState(() {
      NoOfShoes--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int NoOfShoes = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: Text('My Cart'),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CartCard(
                ShoeName: 'Nike Air Max',
                ShoePrice: '\$120',
                ShoeSize: 'L',
                ShoeImage: 'NikeD'),
            SizedBox(
              height: 15,
            ),
            CartCard(
                ShoeName: 'Nike Club Max',
                ShoePrice: '\$64.99',
                ShoeSize: 'XL',
                ShoeImage: 'NikeC'),
            SizedBox(
              height: 15,
            ),
            CartCard(
                ShoeName: 'Nike Jordans',
                ShoePrice: '\$72',
                ShoeSize: 'S',
                ShoeImage: 'NikeJ'),
            SizedBox(
              height: 15,
            ),
            // CartCard(
            //     ShoeName: 'Nike Drifter',
            //     ShoePrice: '\$120',
            //     ShoeSize: 'XXL',
            //     ShoeImage: 'NikeD'),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              '\$1250.00',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shopping',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              '\$450.99',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        child: Divider(
                          height: 1,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Costs',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              '\$1700.99',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: MaterialButton(
                          color: Color(0xff5B9EE1),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 100),
                            child: Text(
                              'Checkout',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShoeCounter extends StatefulWidget {
  const ShoeCounter({super.key});

  @override
  State<ShoeCounter> createState() => _ShoeCounterState();
}

class _ShoeCounterState extends State<ShoeCounter> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget CartCard({
  final String? ShoeName,
  final String? ShoePrice,
  final String? ShoeSize,
  final String? ShoeImage,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        color: Colors.white,
        height: 134,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('images/$ShoeImage.png')],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$ShoeName',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '$ShoePrice',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '0',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blueAccent,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 42.7,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$ShoeSize'),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_outline_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget ToltalProducts() {
  return Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                '\$1250.00',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shopping',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                '\$450.99',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          child: Divider(
            height: 1,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Costs',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                '\$1700.99',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: MaterialButton(
            color: Color(0xff5B9EE1),
            onPressed: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              child: Text(
                'Checkout',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

class ShoeCountBloc {
  int _ShoeCount = 0;

  final _ShoeCountController = StreamController<int>();
  Stream<int> get _ShoeCountStream => _ShoeCountController.stream;

  void AddShoe() {
    _ShoeCount++;
    _ShoeCountController.sink.add(_ShoeCount);
  }

  void SubtractShoe() {
    _ShoeCount--;
    _ShoeCountController.sink.add(_ShoeCount);
  }
}
