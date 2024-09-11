import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
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
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

void main() {
  runApp(const MyApp());
}
