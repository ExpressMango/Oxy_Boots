import 'package:flutter/material.dart';
import 'package:oxy_boots/Pages/Cart.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<String> PaymentMethods = [
    'PayPal',
    'Opay',
    'PalmPay',
    'MasterCard',
    'Visa',
    'FlutterWave'
        'PayStack'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 15,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.amber),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Contact Information',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.mail_outline_rounded,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email@Gmail.com',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Email',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.4),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.edit),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.phone_outlined,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '+9130796783',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'Phone',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.4),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.edit),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Newahall St 36, London, 12908 - UK'),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down_circle),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/Map.png',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Image.asset('images/PayPal.png'),
                    Text(
                      'Payment Methods',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        // Image.asset('image/PayPal.png'),
                        Column(
                          children: [
                            Text(
                              'PayPal Balance',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              '\$25',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
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
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: SimpleDialog(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white24,
                                    radius: 70,
                                    child: Center(
                                      child: Image.asset('images/Congrats.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Your Payment Was\nSuccessful',
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(45),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      child: MaterialButton(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text(
                                              'Continue Shopping',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          color: Color(0xff5B9EE1),
                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                                context, '/HP');
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 100),
                          child: Text(
                            'Checkout',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
