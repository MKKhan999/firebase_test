import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/services/auth.dart';
import 'package:flutter_application_1/screens/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('my yo'),
        backgroundColor: Colors.orange[450],
        elevation: 0.0,
        actions: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.person),
            label: Text('Log out'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
