import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TestDateTime extends StatefulWidget {
  const TestDateTime({Key? key}) : super(key: key);

  @override
  State<TestDateTime> createState() => _TestDateTimeState();
}

class _TestDateTimeState extends State<TestDateTime> {
  final DateTime now = DateTime.now();
  final DateFormat format = DateFormat('yyyy-MM-dd');
  final DateFormat format2 = DateFormat('yyyy년 MM월 dd일 hh시 mm분 ss초');
  String get formatted => format.format(now);
  String get formatted2 => format2.format(now);
  // final String formatted = format.format(now);
  // print(formatted);

  _TestDateTimeState() {
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
          ElevatedButton(
            child: Text('Open route'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.send),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const SizedBox(
                  width: 100,
                  height: 100,
                  child: Icon(
                    Icons.remove_circle_outline,
                  ))),
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

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 300,
      height: 300,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );

    /* Scaffold(
      // appBar: AppBar(
      //   title: Text("Second Route"),
      // ),
      body: Container(
        color: Colors.amber,
        width: 300,
        height: 300,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back!'),
          ),
        ),
      ),
    ); */
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
