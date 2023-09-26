import 'package:flutter/material.dart';
import 'package:weather_app_with_flutter/constants/constants.dart';
import 'package:weather_app_with_flutter/screens/intro_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          scaffoldBackgroundColor: Constants.kScaffoldbackgroundColor,
          fontFamily: 'Libre',
          colorScheme: const ColorScheme.dark(),
          appBarTheme: const AppBarTheme(
            backgroundColor: Constants.kScaffoldbackgroundColor,
            elevation: 0,
          )),
      home: const IntroScreen(),
    );
  }
}
