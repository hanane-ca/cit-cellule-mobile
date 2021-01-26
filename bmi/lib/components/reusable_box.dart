import 'package:flutter/material.dart';
import '../const.dart';

class ReusableBox extends StatelessWidget {
  final Widget widget;
  ReusableBox({@required this.widget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        color: kdarkBlue,
        height: 200,
        child: widget,
      ),
    );
  }
}
