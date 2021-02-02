import 'package:flutter/material.dart';
import 'package:learnProvider/screens/address.dart';
import 'package:learnProvider/screens/email.dart';
import 'package:learnProvider/screens/name.dart';
import 'package:learnProvider/screens/phone.dart';
import 'package:learnProvider/screens/signup.dart';
import 'package:provider/provider.dart';
import 'data_center.dart';
import 'screens/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataCenter(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Signup(),
          '/name': (context) => NameScreen(),
          '/phone': (context) => PhoneScreen(),
          '/email': (context) => EmailScreen(),
          '/address': (context) => AddressScreen(),
          '/nav': (context) => NavBar(),
        },
      ),
    );
  }
}
