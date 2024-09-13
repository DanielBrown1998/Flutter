import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  final String title;
  const MyApp({super.key, required this.title});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int num = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hello World',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Search button clicked');
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                num++;
                print('More button clicked');
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_right_alt),
              onPressed: () {
                print('Arrow button clicked');
              },
            )
        ],
        ),
        body: Center(
            child: Text('Hello World $num'),
        ),
      )
    );
  }
}

void main() {
  runApp(const MyApp(title: 'Welcome to My first app!!!'));
}
