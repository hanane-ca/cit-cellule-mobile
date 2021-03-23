import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/notifier/todos_notifier.dart';
import 'package:to_do_list/services/todos_services.dart';

class Todos extends StatefulWidget {
  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {


  @override
    void initState() {
      TodosNotifier todosNotifier = Provider.of<TodosNotifier>(context, listen: false);
      getTodos(todosNotifier);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    TodosNotifier todosNotifier = Provider.of<TodosNotifier>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/create');
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: todosNotifier.todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todosNotifier.todos[index].task),
              subtitle: Text(todosNotifier.todos[index].date),
              trailing: GestureDetector(
                onTap: () {
                  deleteTodo(todosNotifier, todosNotifier.todos[index].docId);
                },
                child: Icon(Icons.delete),
              ),
            );
          },
        ),
      ),
    );
  }
}
