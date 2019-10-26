export 'package:appbasica/form_itens.dart';
import 'package:flutter/material.dart';

class FormItens {
  Color _textColor = Colors.cyan;

  Widget textForm(String text){
    return Text(text, 
            style: TextStyle(
              fontSize: 30.0, 
              color: _textColor,
              fontWeight: FontWeight.bold,
              fontFamily: ".SF UI Display"
            )
          );
  }

  Widget buttonForm(String text, Function callback){
    return FlatButton(
      child: Text(text, style: TextStyle(fontSize: 15),),
      color: _textColor,
      onPressed: callback,
    );
  }

}
