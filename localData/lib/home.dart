import 'package:flutter/material.dart';
import 'data_base_helper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                color: Colors.amber,
                onPressed: () async {
                  await DatabaseHelper.instance
                      .insert({DatabaseHelper.columnName: 'Hanane'});
                },
                child: Text('Insert')),
            FlatButton(
                color: Colors.blueAccent,
                onPressed: () async {
                  //this is a list of all the rows existing in the table
                  await DatabaseHelper.instance.queryAll();
                },
                child: Text('query')),
            FlatButton(
                color: Colors.greenAccent,
                onPressed: () async {
                  await DatabaseHelper.instance.update({
                    DatabaseHelper.columnId: 3,
                    DatabaseHelper.columnName: "Imane"
                  });
                },
                child: Text('update')),
            FlatButton(
                color: Colors.redAccent,
                onPressed: () async {
                  DatabaseHelper.instance.delete(2);
                },
                child: Text('delete')),
          ],
        ),
      ),
    );
  }
}
