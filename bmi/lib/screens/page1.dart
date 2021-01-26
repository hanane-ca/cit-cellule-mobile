import 'package:bmi/notifier/data.dart';
import 'package:bmi/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Data data = Provider.of<Data>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text('Page1'),
              SizedBox(height: 200),
              Text('Value from page 1 : ${data.value} '),
              SizedBox(height: 200),
              FlatButton(
                onPressed: () {
                  data.setValue("My value from provider");
                  // Navigator.push(context,MaterialPageRoute(
                  //     builder: (context) => Page2()));
                },
                child: Text('change'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
