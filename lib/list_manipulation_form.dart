export 'package:appbasica/list_manipulation_form.dart';

import 'package:appbasica/login_form.dart';
import 'package:appbasica/main.dart';
import 'package:flutter/material.dart';
import 'package:appbasica/form_itens.dart';

StatelessWidget listManipulation = Base(
      name: "List", 
      content: ListManipulationForm(),
    );

@immutable
class ListManipulationForm extends StatelessWidget {

  @override
  Widget build(context) {
    final FormItens formItens = FormItens();
    return Container(
              child: Column(
                children: <Widget>[
                  formItens.buttonField("Voltar", (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => 
                                          login
                                        ),
                    );
                  }),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              padding: EdgeInsets.all(30.0),
            );
  }
}