import 'package:flutter/material.dart';
import '../const.dart';

class ReusableBox extends StatelessWidget {
  final Widget widget;
  final Function onTap;
  final bool isSelected;

  ReusableBox({@required this.widget,this.onTap, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration : BoxDecoration(
            color: isSelected == true ? kActiveCardColour : kInactiveCardColour,
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: EdgeInsets.all(10),
          height: 200,
          child: widget,
        ),
      ),
    );
  }
}
