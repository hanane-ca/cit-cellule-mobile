import 'package:flutter/cupertino.dart';
import 'package:to_do_list/model/todo_model.dart';

class TodosNotifier with ChangeNotifier {
  List<TodoModel> _todos = [];

  List<TodoModel> get todos => _todos;

  set todos(List<TodoModel> list) {
    _todos = list;
    notifyListeners();
  }
}