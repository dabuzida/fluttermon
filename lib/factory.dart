import 'package:flutter/material.dart';

class Factory extends StatefulWidget {
  const Factory({Key? key}) : super(key: key);

  @override
  State<Factory> createState() => _FactoryState();
}

class Person {
  String? name;
  int? age;

  // Person({required this.name, required this.age});

  factory Person(String age, int name) {
    return Person(age, name);
  }
}

class _FactoryState extends State<Factory> {
  @override
  Widget build(BuildContext context) {
    return Text('p1.name');
  }
}
