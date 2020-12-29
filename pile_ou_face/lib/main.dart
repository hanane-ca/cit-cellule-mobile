import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Pile ou face'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/$num.jpg'),
              SizedBox(
                height: 30,
                width: double.infinity,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    num = Random().nextInt(2) + 1;
                  });
                  print(num);
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.blueGrey,
                  child: Text(
                    'Click me ',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
