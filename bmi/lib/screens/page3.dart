import 'package:bmi/notifier/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Data data = Provider.of<Data>(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text('Page3'),
              SizedBox(height: 200,),
              Text('Value from 2 :${data.value}'),
              SizedBox(height: 200,),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/');
                },
                child: Text('page1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
