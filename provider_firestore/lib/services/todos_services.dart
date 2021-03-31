import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/model/todo_model.dart';
import 'package:to_do_list/notifier/todos_notifier.dart';

getTodos(TodosNotifier todosNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection('todos').get();
  List<TodoModel> todos = [];
  snapshot.docs.forEach((doc) {
    print(doc.data());
    TodoModel todo = new TodoModel(doc.id,doc.data());
    todos.add(todo);
  });
  todosNotifier.todos = todos;
}

addTodo(TodosNotifier todosNotifier, String task) async {
  TodoModel todo = TodoModel("", {
    'task': task,
    'date': DateFormat('yyyy-MM-dd HH:mm:ssS').format(DateTime.now())
  });
  DocumentReference doc = await todo.save();
  todo.docId = doc.id;
  List todos = todosNotifier.todos;
  todos.add(todo);
  todosNotifier.todos = todos;
}

deleteTodo(TodosNotifier todosNotifier, TodoModel todo) async {
  List<TodoModel> todos = todosNotifier.todos;
  await todo.delete();
  todos.removeWhere((currTodo) => currTodo.docId.compareTo(todo.docId) == 0);
  todosNotifier.todos = todos;
}

updateTodo(TodosNotifier todosNotifier, String task) async {
  List<TodoModel> todos = todosNotifier.todos;
  TodoModel todo = todosNotifier.currentTodo;
  todo.task = task;
  todos.removeWhere((currTodo) => currTodo.docId.compareTo(todo.docId) == 0);
  todos.add(todo);
  await todo.update();
  todosNotifier.todos = todos;
}