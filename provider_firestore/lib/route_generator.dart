import 'package:flutter/material.dart';
import 'screens/add_todo.dart';
import 'screens/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch(routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => Todos());
      case '/create':
        return MaterialPageRoute(builder: (context) => AddTodo());
      default:
        return MaterialPageRoute(builder: (context) => Todos());
    }
  }
}