export 'package:appbasica/main.dart';
import 'package:flutter/material.dart';
import 'package:appbasica/login_form.dart';

void main() => runApp(Initial());

class Initial extends StatelessWidget {
  LoginForm loginForm = LoginForm();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Initial page',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        backgroundColor: Colors.blueGrey,
        body: loginForm.loginForm(),
      ),
    );
  }
}