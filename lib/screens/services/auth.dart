import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Sign in form (anon)

  myUser? _userFromFirebaseUser(User user) {
    return user != null ? myUser(uid: user.uid) : null;
  }

  Stream<myUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user!));
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString() + ' was the error, try again. Did not work.');
      return null;
    }
  }

  //Sign in with email and password

  // Register with email and password

  // Sign out

  Future signOut() async {
    try {
      return await _auth.signOut;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
