import 'package:flutter/material.dart';
import 'package:flutter_animated_onboarding_main/screens/login/login.dart';
import 'package:flutter_animated_onboarding_main/screens/home/navigation_home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learnera',
      home: Builder(
        builder: (BuildContext context) {
          return NavigationHomeScreen();
        },
      ),
    );
  }
}

void main() => runApp(App());
