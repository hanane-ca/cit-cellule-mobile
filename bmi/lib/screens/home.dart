import 'package:bmi/components/plus_ou_moins.dart';
import 'package:flutter/material.dart';
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
                ReusableBox(
                  widget: Icon(
                    Icons.home,
                    size: 80,
                  ),
                ),
                ReusableBox(
                  widget: Icon(
                    Icons.shop,
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
                Text('$height cm'),
                Slider(
                  value: height,
                  onChanged: (newvalue) {
                    setState(() {
                      height = newvalue;
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
                onPressed: () {},
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
