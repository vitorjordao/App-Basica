export 'package:appbasica/list_manipulation_form.dart';

import 'dart:convert';

import 'package:appbasica/login_form.dart';
import 'package:appbasica/main.dart';
import 'package:appbasica/request.dart';
import 'package:flutter/material.dart';
import 'package:appbasica/form_itens.dart';
import 'package:http/http.dart' as http;


StatelessWidget listManipulation = Base(
      name: "List", 
      content: ListManipulationForm(),
    );

@immutable
class ListManipulationForm extends StatelessWidget {

  @override
  Widget build(context) {

    return  FutureBuilder(
              future: fetchPostApi(),
              builder: (context, snapshot) {
                if(snapshot.connectionState != ConnectionState.done || 
                    snapshot.hasError){
                  return Container();
                }
                List<ListTile> list = List<ListTile>.from(
                    json.decode(snapshot.data.body)["docs"]
                    .map((val)=>
                      ListTile(title: Text(val["title"]),)
                    ));
                
                list.add(ListTile(
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
                          );
                
                return ListView(
                  children: list,
                );
              }
            );
  }
}