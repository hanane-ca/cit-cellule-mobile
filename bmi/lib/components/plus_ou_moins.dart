import 'package:bmi/components/reusable_box.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class PlusMoins extends StatelessWidget {
  final int weight;
  final Function add;
  final Function sub;
  final String title;
  final String value;

  PlusMoins({this.add, this.sub, this.weight, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return ReusableBox(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  add();
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: kdarkBlue,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 32),
              ),
              GestureDetector(
                onTap: () {
                  sub();
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: kdarkBlue,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
