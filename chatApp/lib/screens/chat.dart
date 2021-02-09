import 'package:chatApp/services/auth_controller.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(AuthController().getCurrentUserEmail()),
      ),
    );
  }
}
