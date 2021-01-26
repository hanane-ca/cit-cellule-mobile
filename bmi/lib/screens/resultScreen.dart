import 'package:flutter/material.dart';

import '../const.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0,),
              Text('BMI Result :'),
              SizedBox(height: 30.0,),
              Text('you are ...'),
              SizedBox(height: 50.0,),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
                  child: Text('Screen3'),
                  decoration: BoxDecoration(color: kpinkColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
