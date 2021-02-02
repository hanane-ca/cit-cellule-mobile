import 'package:flutter/material.dart';
import '../components/plus_ou_moins.dart';
import '../components/reusable_box.dart';
import '../const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: kdarkBlue,
                    height: 200,
                    child: Icon(
                      Icons.home,
                      size: 80,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: kdarkBlue,
                    height: 200,
                    child: Icon(
                      Icons.shop,
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// weight / height^2
