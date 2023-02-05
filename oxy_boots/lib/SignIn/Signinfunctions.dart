import 'package:flutter/material.dart';
import 'package:oxy_boots/BestSellers.dart';

Widget textfield(
  Icon icon, {
  final Widget? iconS,
  final Widget? iconP,
  required bool obscure,
  final String? Text,
}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: TextField(
      obscureText: obscure,
      showCursor: false,
      cursorColor: Colors.grey[600],
      cursorHeight: 25,
      decoration: InputDecoration(
          suffixIcon: iconS,
          prefixIcon: iconP,
          hintText: Text,
          fillColor: Color(0xff707B81),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.red))),
    ),
  );
}

Widget LogoContainer(
    {final String? CompanyImages,
    final String? CompanyName,
    final Widget? padding}) {
  return Container(
    height: 50,
    width: 190,
    decoration: BoxDecoration(
        color: Color(0xff5B9EE1), borderRadius: BorderRadius.circular(30)),
    child: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Image.asset('$CompanyImages'),
            SizedBox(
              width: 10,
            ),
            Text(
              '$CompanyName',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    ),
  );
}

Widget ShoeCard({
  final String? ShoeImage,
  final String? Shoetype,
  final String? Price,
}) {
  return Container(
    height: 210,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('$ShoeImage'),
        GestureDetector(
          // onTap: () {
          //   Navigator.of(context as BuildContext).push(
          //     MaterialPageRoute(builder: (BuildContext context) {
          //       return BestSellers();
          //     }),
          //   );
          // },
          child: Text(
            'BEST SELLER',
            style: TextStyle(fontSize: 15, color: Color(0xff5B9EE1)),
          ),
        ),
        Text('$Shoetype', style: TextStyle(fontSize: 18, color: Colors.black)),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '$Price',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff5B9EE1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: 40,
                        width: 40,
                        child: Center(child: Icon(Icons.add)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
