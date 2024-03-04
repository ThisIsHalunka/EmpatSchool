import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Person {
  late String _fullName;
  Person({required String fullName}) {
    _fullName = fullName;
  }
  String get fullName {
    return _fullName;
  }

  set fullName(String fullName) {
    _fullName = fullName;
  }
}

class MyApp extends StatelessWidget {
  final myself = Person(fullName: "Bohdan Halunka");
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Моя Flutter Сторінка'),
        ),
        body: Center(
          child: Text(
            'Hello ${myself.fullName}',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
