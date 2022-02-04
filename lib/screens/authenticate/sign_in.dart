import 'package:flutter_application_1/screens/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        elevation: 0.0,
        title: Text('Sign in to App..'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: ElevatedButton(
              child: Text('Sign in anon'),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('Error signing in');
                } else {
                  print('Signed in!');
                  print(result.uid);
                }
              })),
    );
  }
}
