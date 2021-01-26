import 'package:bmi/components/reusable_box.dart';
import 'package:flutter/material.dart';

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
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    add();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 62),
                  ),
                ),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 32),
              ),
              FlatButton(
                onPressed: () {
                  sub();
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 62),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
