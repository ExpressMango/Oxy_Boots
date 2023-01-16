import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oxy_boots/Onboarding/Page1.dart';
import 'package:oxy_boots/Onboarding/Page3.dart';
import 'package:oxy_boots/SignIn/Login.dart';
import 'package:oxy_boots/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Onboarding/Page2.dart';

void main() {
  runApp(MaterialApp(
    home: Onboard(),
  ));
}

class Onboard extends StatefulWidget {
  Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  PageController _controller = PageController();
  bool OnLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              OnLastPage = (index == 2);
            });
          },
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                      dotHeight: 5,
                      dotWidth: 30,
                      activeDotColor: Color(0xff5B9EE1)),
                ),
                OnLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff5B9EE1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff707B81)),
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInCubic);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff5B9EE1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff707B81)),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          alignment: Alignment(0, 0.999),
        )
      ],
    ));
  }
}
