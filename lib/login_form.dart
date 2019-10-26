export 'package:appbasica/login_form.dart';
import 'package:flutter/material.dart';
import 'package:appbasica/form_itens.dart';

class LoginForm {

  FormItens _formItens = FormItens();

  Widget loginForm() {
    return Container(
              child: Column(
                children: <Widget>[
                  _formItens.textForm("Login"),
                  TextFormField(),
                  _formItens.textForm("Senha"),
                  TextFormField(),
                  Spacer(),
                  _formItens.buttonForm("Logar", (){}),
                  _formItens.buttonForm("Registrar", (){})
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              padding: EdgeInsets.all(30.0),
            );
  }
}