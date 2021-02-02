import 'dart:math';
import 'package:bmi/components/plus_ou_moins.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_box.dart';
import '../const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String height = '170';
  int weight = 60;
  int age = 20;

  bool maleIsSelected = false;
  bool femaleIsSelected = false;

  toggleSelected(bool male) {
    setState(() {
      if (male) {
        maleIsSelected = true;
        femaleIsSelected = false;
      } else {
        femaleIsSelected = true;
        maleIsSelected = false;
      }
    });
  }

  double bmiResult() {
    return weight / pow(double.parse(height), 2);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Row(
              children: [
                ReusableBox(
                  onTap: () {
                    toggleSelected(true);
                  },
                  isSelected: maleIsSelected,
                  widget: Icon(
                    FontAwesomeIcons.male,
                    size: 80,
                  ),
                ),
                ReusableBox(
                  onTap: () {
                    toggleSelected(false);
                  },
                  isSelected: femaleIsSelected,
                  widget: Icon(
                    FontAwesomeIcons.female,
                    size: 80,
                  ),
                ),
              ],
            ),
            ReusableBox(
                widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '$height cm',
                  style: TextStyle(fontSize: 22.0),
                ),
                Slider(
                  value: double.parse(height),
                  onChanged: (newvalue) {
                    setState(() {
                      height = newvalue.toStringAsFixed(0);
                    });
                  },
                  min: 140,
                  max: 210,
                  activeColor: Colors.red,
                  inactiveColor: Colors.yellow,
                ),
              ],
            )),
            Row(
              children: [
                PlusMoins(
                  title: 'Weight',
                  value: '$weight',
                  add: () {
                    setState(() {
                      weight++;
                    });
                  },
                  sub: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
                PlusMoins(
                  title: 'Age',
                  value: '$age',
                  add: () {
                    setState(() {
                      age++;
                    });
                  },
                  sub: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
              ],
            ),
            Container(
              width: double.infinity,
              color: kpinkColor,
              child: FlatButton(
                onPressed: () {
                  print('BMI Result : ${bmiResult()}');
                  Navigator.pushNamed(context, '/result');
                },
                child: Text('Calculate'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// weight / height^2
