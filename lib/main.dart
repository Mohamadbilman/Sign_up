import 'package:flutter/material.dart';

import 'auth/E mail.dart';
import 'auth/login.dart';
import 'auth/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        "Login": (context) => Login(),
        "SignUp": (context) => SignUp(),
        "Email": (context) => Email(),
      },
    );
  }
}
