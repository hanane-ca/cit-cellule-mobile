
import 'package:flutter/cupertino.dart';

class Data with ChangeNotifier {
  String value = "My value from provider"; 

  getValue() {
    return value;
  }

   setValue(String val) {
    value = val;
    notifyListeners();
  }

  
}