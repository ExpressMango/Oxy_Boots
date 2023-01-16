import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:oxy_boots/Pages/Profile.dart';
import 'package:oxy_boots/Pages/Cart.dart';
import 'package:oxy_boots/Pages/Favourite.dart';
import 'package:oxy_boots/Pages/Home.dart';
import 'package:oxy_boots/Pages/Notifications.dart';
import 'package:oxy_boots/SignIn/Signinfunctions.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void navigatebottombar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Favourite(),
    Cart(),
    Notifications(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
            selectedIndex: _selectedindex,
            onTabChange: navigatebottombar,
            gap: 10,
            padding: EdgeInsets.all(10),
            tabBorderRadius: 100,
            tabBackgroundColor: Color(0xff5B9EE1),
            activeColor: Color(0xff5B9EE1),
            tabs: [
              GButton(
                text: '       ',
                icon: Icons.home_outlined,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
              ),
              GButton(
                text: '       ',
                icon: Icons.favorite_outline,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
              ),
              GButton(
                text: '       ',
                icon: Icons.shopping_cart_outlined,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
              ),
              GButton(
                text: '       ',
                icon: Icons.notifications_outlined,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
              ),
              GButton(
                text: '       ',
                icon: Icons.account_circle_outlined,
                iconActiveColor: Colors.white,
                iconColor: Colors.grey,
              ),
            ]),
      ),
    );
  }
}
