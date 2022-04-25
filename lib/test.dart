import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  DoubleLinkedQueue x = DoubleLinkedQueue();
  DateTime.parse(formattedString)
  Person p1 = Person(name: 'dd', image: 232, timeCreated: DateTime.now().toString());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          p1.name,
        ),
        Text(p1.image.toString()),
        Text(p1.timeCreated),
      ]),
    );
  }
}

class Person {
  final String name;
  final int image;
  final String timeCreated;
  const Person({
    required this.name,
    required this.image,
    required this.timeCreated,
  });
}
