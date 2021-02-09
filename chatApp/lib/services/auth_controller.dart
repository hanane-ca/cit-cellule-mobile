import 'package:firebase_auth/firebase_auth.dart';
import '../models/userModel.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signUpUser(UserModel user) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password,
      );
      return {
        'status': 200,
        'user': userCredential.user,
      };
    } catch (error) {
      return {
        'status': 400,
        'error': error.message.toString(),
      };
    }
  }

  getCurrentUserEmail() {
    return _auth.currentUser.email;
  }

  signInUser(UserModel user) async {
    _auth
        .signInWithEmailAndPassword(
      email: user.email,
      password: user.password,
    )
        .then((UserCredential userCredential) {
      print(userCredential.user.uid);
    }).catchError((error) {
      print(error.message.toString());
    });
  }

  signOutUser() async {
    await _auth.signOut();
  }
}
