export 'package:appbasica/main.dart';
import 'package:flutter/material.dart';
import 'package:appbasica/login_form.dart';

void main() => runApp(login);

@immutable
class Base extends StatelessWidget {

  final String name;
  final Widget content;
  

  const Base (
      {
        this.name, 
        this.content
      }
    ) : assert (
      name != null,
      content != null,
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: name,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        backgroundColor: Colors.blueGrey,
        body: content,
      ),
    );
  }
}