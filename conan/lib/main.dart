import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffA8BBE8),
          body: Column(
            children: [
              Spacer(flex: 3),
              Container(
                width: 150,
                height: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/detective-conan-1.jpg'),
                ),
              ),
              Spacer(flex: 1),
              Text(
                'Conan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Stencil'),
              ),
              Spacer(flex: 1),
              Text(
                'The best Detective ever',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'DancingScript'),
              ),
              Spacer(flex: 2),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 35,
                    ),
                    SizedBox(width: 35),
                    Text(
                      '+212606060606',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 1),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      size: 35,
                    ),
                    SizedBox(width: 25),
                    Text(
                      'conan@gmail.com',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
