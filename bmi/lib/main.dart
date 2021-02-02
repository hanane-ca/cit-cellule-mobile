import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'notifier/data.dart';
import 'screens/loading.dart';
import 'screens/home.dart';
import 'screens/resultScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Data(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/result': (context) => Result(),
        },
      ),
    );
  }
}
