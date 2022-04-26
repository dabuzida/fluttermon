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
  final DateFormat format = DateFormat('yyyy-MM-dd');
  final DateFormat format2 = DateFormat('yyyy년 MM월 dd일 hh시 mm분 ss초');
  String get formatted => format.format(now);
  String get formatted2 => format2.format(now);
  // final String formatted = format.format(now);
  // print(formatted);

  _TestState() {
    // final String formatted2 = format2.format(now);
    // print(formatted);
    // print(formatted2);
  }

  // DateTime.parse(formattedString)
  Person p1 = Person(name: 'dd', image: 232, timeCreated: DateTime.now().toString());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(p1.name),
          Text(p1.image.toString()),
          Text(p1.timeCreated),
          Text(formatted),
          Text(formatted2),
        ],
      ),
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
