import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: GestureDetector(
          child: Text('Screen3'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
