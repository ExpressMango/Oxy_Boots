import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Icon(
                      Icons.edit,
                      color: Color(0xff5B9EE1),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/SW.jpeg'),
                        radius: 60,
                      ),
                      Text(
                        'Alisson Becker',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Full Name',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Alisson Becker',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Email Address',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Alissonbecker@gmail.com',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '************',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
