import 'package:flutter/material.dart';
import 'screens/add_todo.dart';
import 'screens/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch(routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => Todos());
      case '/create':
        return MaterialPageRoute(builder: (context) => AddTodo(args: args,));
      default:
        return MaterialPageRoute(builder: (context) => Todos());
    }
  }
}