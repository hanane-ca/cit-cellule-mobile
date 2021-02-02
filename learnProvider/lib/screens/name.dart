import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data_center.dart';

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataCenter data = Provider.of<DataCenter>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Name :'), Text(data.getName())],
          ),
        ],
      ),
    );
  }
}
