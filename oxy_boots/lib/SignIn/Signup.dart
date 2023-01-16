import 'package:flutter/material.dart';
import 'package:oxy_boots/SignIn/Signinfunctions.dart';

void main() => runApp(MaterialApp(
      home: Signup(),
    ));

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sized box
              SizedBox(height: 20),
              // Text Create account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Create account',
                        style: TextStyle(fontSize: 30),
                      ),
                      // Text Lets Create Your Account together
                      Text(
                        'Let\'s Create Your Account Together',
                        style: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),
              //Text your name
              Text(
                '  Your Name',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              //your name textfield
              textfield(Icon(Icons.person_add_alt_1_outlined),
                  obscure: false, Text: 'Hollow Knight'),
              SizedBox(
                height: 30,
              ),
              //text email
              Text(
                '  E-mail Address',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              //email textfield
              textfield(Icon(Icons.email_outlined), obscure: false),
              SizedBox(
                height: 30,
              ),
              //text password
              Text(
                "  Password",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              //passworld textfield
              textfield(Icon(Icons.visibility_off_outlined), obscure: true),

              SizedBox(
                height: 30,
              ),
              //sign up button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/LG');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff5B9EE1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 150),
                        child: Text(
                          'Sign UP',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //signup with google button

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/LG');
                    },
                    child: Container(
                      height: 58,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Googlesmall.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Sign Up With Google',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //already have an account? sign in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Text(
                        'Already Have An Account?',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.pushReplacementNamed(context, '/LG');
                        }),
                        child: Text(
                          ' Sign In Now',
                          style: TextStyle(color: Colors.black.withOpacity(1)),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
