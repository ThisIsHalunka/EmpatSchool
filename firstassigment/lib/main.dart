import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Person {
  late String _fullName;
  Person(String fullName) {
    _fullName = fullName;
  }
  String get getFullName {
    return _fullName;
  }

  set setFullName(String fullName) {
    _fullName = fullName;
  }
}

class MyApp extends StatelessWidget {
  final myself = Person("Bohdan Halunka");
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
            'Hello ${myself.getFullNamit}',
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
