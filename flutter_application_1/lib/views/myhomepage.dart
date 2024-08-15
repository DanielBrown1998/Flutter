import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/myapp.dart';

class ContactList extends StatelessWidget{
  const ContactList({super.key, required this.title});
  final String title;

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.pushNamed(context, MyApp.FORMS);            
          },
          icon: const Icon(Icons.add),
        )
      ],
    ),
    body: ListView(),
  ); 
}
}