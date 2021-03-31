import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/notifier/todos_notifier.dart';
import 'package:to_do_list/services/todos_services.dart';

class AddTodo extends StatefulWidget {
  final Map<String, dynamic> args;

  const AddTodo({Key key, this.args}) : super(key: key);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController _todoController = TextEditingController();

  @override
  void initState() {
    if (widget.args != null) {
      _todoController.text = widget.args['todo'].task;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TodosNotifier todosNotifier = Provider.of<TodosNotifier>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.args == null ? 'Add Todo' : 'Edit Todo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _todoController,
              ),
              TextButton(
                  onPressed: () async {
                    if (_todoController.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                        content: Text("Field cannot be empty"),
                        duration: new Duration(
                          seconds: 5,
                        ),
                      ));
                    } else {
                      if (widget.args == null) {
                        await addTodo(todosNotifier, _todoController.text);
                      } else {
                        await updateTodo(todosNotifier, _todoController.text);
                      }
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                        content: Text('Very Good !'),
                        duration: new Duration(seconds: 10),
                        action: SnackBarAction(
                          label: "Ok",
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ));
                    }
                  },
                  child: Container(
                    child: Text(
                      widget.args == null ? 'Add' : 'Edit',
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
