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
    return 
                  
                  ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.map),
                        title: Text('Map'),
                      ),
                      ListTile(
                        leading: Icon(Icons.photo_album),
                        title: Text('Album'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text('Phone'),
                      ),
                      ListTile(
                        leading: Icon(Icons.backspace),
                        title: Text("Voltar"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => 
                                                login
                                              ),
                          );
                        },
                      )
                    ],
                  );
  }
}