import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}
