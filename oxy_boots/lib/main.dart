import 'package:flutter/material.dart';
import 'package:oxy_boots/BestSellers.dart';
import 'package:oxy_boots/HomePage/Home.dart';
import 'package:oxy_boots/SignIn/ForgotPassword.dart';
import 'package:oxy_boots/SignIn/Login.dart';
import 'package:oxy_boots/SignIn/Signup.dart';
import 'package:oxy_boots/Splash.dart';
import 'package:oxy_boots/Onboard.dart';

void main() => runApp(MaterialApp(
      routes: {
        // '/': (context) => Splash(),
        '/': (context) => BestSellers(),
        '/OB': (context) => Onboard(),
        '/LG': (context) => Login(),
        '/SU': (context) => Signup(),
        '/HP': (context) => HomePage(),
        '/FP': (context) => ForgotPassword(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Airbnb Cereal Font'),
    ));
