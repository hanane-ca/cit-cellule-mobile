import 'package:flutter/material.dart';
import 'home.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('screen1');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Image.asset('images/BMI.png'),
          ),
        ),
      ),
    );
  }
}
