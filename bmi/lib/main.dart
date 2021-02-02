import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/loading.dart';
import 'screens/resultScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/result': (context) => Result(),
      },
    );
  }
}
