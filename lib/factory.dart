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

// factory Person() =>

  // factory Person({this.name, this.age});

  /* Json({required this.userId, required this.id, required this.title, required this.body});
  factory Json.fromJson(Map<String, dynamic> json) {
    return Json(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  } */
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  // 1번
  factory Logger(String name) {
    return _cache.putIfAbsent(
        // 2번
        name,
        () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

class _FactoryState extends State<Factory> {
  @override
  Widget build(BuildContext context) {
    return Text('p1.name');
  }
}
