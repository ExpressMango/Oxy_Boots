import 'package:flutter/material.dart';
import 'package:oxy_boots/SignIn/Signinfunctions.dart';
import 'package:oxy_boots/SignIn/ForgotPassword.dart';

void main() => runApp(MaterialApp(
      home: Login(),
    ));

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              // text (hello again)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hello again!',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      //sizedbox 10,
                      SizedBox(
                        height: 10,
                      ),
                      //text welcome
                      Text(
                        'Welcome Back You\'ve Been Missed!',
                        style: TextStyle(
                            fontSize: 20, color: Colors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),

              // email text
              Text('   E-mail Address', style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 10,
              ),
              //email textfield,
              textfield(Icon(Icons.email_outlined), obscure: false),
              SizedBox(
                height: 35,
              ),
              //em
              //password text
              Text(
                '   Password',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              //em
              //password textfield  with visibility suffix icon
              textfield(Icon(Icons.visibility_off_outlined), obscure: true),
              SizedBox(
                height: 10,
              ),
              //em
              //recover password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/FP');
                    },
                    child: Text(
                      'Recover Password',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              //em
              //sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, '/Home');
                      Navigator.pushReplacementNamed(context, '/HP');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff5B9EE1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 150),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //em
              //sigb in with google button with google icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, '/Home');
                      Navigator.pushReplacementNamed(context, '/HP');
                    },
                    child: Container(
                      height: 58,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.transparent),
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
                              'Sign In With Google',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff1A2530),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //text dont have an account signup for free
              //em
              SizedBox(
                height: 60,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Text(
                        'Don\'t Have an Account?',
                        style: TextStyle(color: Colors.black.withOpacity(0.5)),
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.pushReplacementNamed(context, '/SU');
                        }),
                        child: Text(
                          ' Sign Up For Free',
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
