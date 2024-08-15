import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/myhomepage.dart';
import 'package:flutter_application_1/views/contactform.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String HOME = '/';
  static const String FORMS = '/contactform';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        HOME: (context) => const ContactList(title: 'contatos'),
        FORMS: (context) =>
            const ContactForm(title: 'Formulário de Contato'),
      },
    );
  }
}
