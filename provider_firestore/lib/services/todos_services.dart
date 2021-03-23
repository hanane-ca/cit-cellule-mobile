import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_list/model/todo_model.dart';
import 'package:to_do_list/notifier/todos_notifier.dart';

getTodos(TodosNotifier todosNotifier) async {
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection('todos').get();
  if (snapshot.docs.length != 0) {
    List<TodoModel> todos = [];
    snapshot.docs.forEach((doc) {
      TodoModel todo = new TodoModel(
        doc.id,
        doc.data(),
      );
      todos.add(todo);
    });
    todosNotifier.todos = todos;
  } else {
    todosNotifier.todos = [];
  }
}

deleteTodo(TodosNotifier todosNotifier, String docId) {
  DocumentReference document =
      FirebaseFirestore.instance.collection('todos').doc(docId);
  document.delete();
  List<TodoModel> todos = todosNotifier.todos;
  todos.removeWhere((todo) => todo.docId.compareTo(docId) == 0);
  todosNotifier.todos = todos;
}

