import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('screen1');
              Navigator.pushNamed(context, '/home');
            },
            child: Image.asset(
              'images/BMI.png',
            ),
          ),
        ),
      ),
    );
  }
}
