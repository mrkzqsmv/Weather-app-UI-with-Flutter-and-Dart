import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_with_flutter/constants/constants.dart';
import 'package:weather_app_with_flutter/screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Spacer(),
            Image.asset('assets/images/cloud-rain-sun.png'),
            const Spacer(
              flex: 4,
            ),
            const Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 26,
                  ),
                  children: [
                    TextSpan(text: 'Weather  '),
                    TextSpan(
                        text: 'News \n& Feeds',
                        style: TextStyle(color: Constants.kPrimaryColor)),
                  ]),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Constants.kPrimaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              onPressed: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => const HomeScreen()));
              },
              child: const Text(
                'Get Started',
                style: TextStyle(color: Constants.kContentColor, fontSize: 18),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
