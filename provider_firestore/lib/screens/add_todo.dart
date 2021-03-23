import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _todoController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Todo'),
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
                      FirebaseFirestore _db = FirebaseFirestore.instance;
                      await _db.collection('todos').add({
                        'task': _todoController.text,
                        'date': DateFormat("yyyy-MM-dd HH:mm:ssS").format(DateTime.now()) 
                      });
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    child: Text(
                      'Add',
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
