import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/screens/authenticate/authenticate.dart';
import 'package:flutter_application_1/screens/home/home.dart';
import 'package:flutter_application_1/screens/services/auth.dart';
import 'package:flutter_application_1/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<myUser?>.value(
        initialData: null,
        value: AuthService().user,
        child: MaterialApp(
          home: Wrapper(),
        ));
  }
}
