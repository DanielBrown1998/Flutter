import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget{

  const ContactForm(
    {super.key, this.title='titulo'}
  );
  final String title;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('Formulário de Contato'),
      ),
    );
  }
}