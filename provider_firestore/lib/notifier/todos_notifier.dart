import 'package:flutter/cupertino.dart';
import 'package:to_do_list/model/todo_model.dart';

class TodosNotifier with ChangeNotifier {
  List<TodoModel> _todos = [];
  TodoModel _currentTodo;

  List<TodoModel> get todos => _todos;
  TodoModel get currentTodo => _currentTodo;

  set todos(List<TodoModel> list) {
    _todos = list;
    notifyListeners();
  }
  set currentTodo(TodoModel todo) {
    _currentTodo = todo;
    notifyListeners();
  }
}
