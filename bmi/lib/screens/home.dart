import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('BMI Calculator'),
        // ),
        body: GestureDetector(
          child: Text('Screen2'),
        ),
      ),
    );
  }
}
