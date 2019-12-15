export 'package:appbasica/form_itens.dart';
import 'package:flutter/material.dart';

class FormItens {
  final Color _textColor = Colors.cyan;
  TextStyle textStyle;

  FormItens () {
    textStyle = TextStyle(
              fontSize: 30.0, 
              color: _textColor,
              fontWeight: FontWeight.bold,
              fontFamily: ".SF UI Display"
            );
  } 

  Widget textField(String text) {
    return TextField(
            decoration: InputDecoration(
              labelText: text,
            ),
            style: textStyle
          );
  }

  Widget passwordField(String text) {
    return TextField(
            decoration: InputDecoration(
              labelText: text,
            ),
            style: textStyle,
            obscureText: true,
          );
  }

  Widget buttonField(String text, Function callback) {
    return FlatButton(
      child: Text(text, style: TextStyle(fontSize: 15),),
      color: _textColor,
      onPressed: callback,
    );
  }

}
