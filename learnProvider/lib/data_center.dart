import 'package:flutter/material.dart';

class DataCenter extends ChangeNotifier {
  //Name Screen
  String name;

  setName(newName) {
    name = newName;
    notifyListeners();
  }

  getName() {
    return name;
  }

  //Phone Screen
  String phone;

  setPhone(numero) {
    phone = numero;
    notifyListeners();
  }

  getPhone() {
    return phone;
  }
}
