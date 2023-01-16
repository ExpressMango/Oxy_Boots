import 'package:flutter/material.dart';
import 'package:oxy_boots/SignIn/Signinfunctions.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 20,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Forgot Password?',
              style:
                  TextStyle(color: Colors.black.withOpacity(1), fontSize: 28)),
          SizedBox(height: 10),
          Text(
              'Please Enter Your Email Address To\n        Recieve A Verification Code',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5), fontSize: 20)),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Email Address',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          textfield(
            Icon(null),
            obscure: false,
          ),
          SizedBox(height: 40),
          Container(
            height: 65,
            width: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff5B9EE1)),
            child: Center(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
