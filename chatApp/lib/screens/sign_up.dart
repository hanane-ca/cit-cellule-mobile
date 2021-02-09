import 'package:chatApp/models/userModel.dart';
import 'package:chatApp/screens/chat.dart';
import 'package:chatApp/services/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  AuthController _authController = AuthController();

  bool isWaiting = false;

  toggleSpinner() {
    setState(() {
      isWaiting = !isWaiting;
    });
  }

  clearFields() {
    emailController.text = '';
    passwordController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isWaiting,
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  controller: emailController,
                ),
                TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    controller: passwordController),
                SizedBox(
                  height: 50.0,
                ),
                FlatButton(
                  onPressed: () async {
                    toggleSpinner();
                    UserModel user = new UserModel(
                      emailController.text,
                      passwordController.text,
                    );
                    var response = await _authController.signUpUser(user);
                    print(response);
                    if (response['status'] == 200) {
                      clearFields();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen()));
                    } else {
                      _scaffoldKey.currentState.showSnackBar(new SnackBar(
                        content: Text(response['error']),
                        duration: new Duration(seconds: 5),
                      ));
                    }
                    toggleSpinner();
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                    color: Colors.blue,
                    child: Text('Sign up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
