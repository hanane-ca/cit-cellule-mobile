import 'package:bmi/screens/page3.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text('Page2'),
              SizedBox(height: 200,),
              Text('Value passed'),
              SizedBox(height: 200,),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) => Page3()));
                },
                child: Text('page3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
