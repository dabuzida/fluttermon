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
          Text('datasddddddddddddddddddddddddddddddddddddddd'),
          /* Container(
            color: Colors.grey,
            width: 300,
            height: 200,
            child: ListTile(
              leading: Image.network('https://picsum.photos/id/254/200'),
              title: Text(
                'sadfsdafsdfsdf',
              ),
              subtitle: Text('sdfsdfsdfsd'),
              trailing: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.delete_forever_outlined,
                  size: 20,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ), */
          TextButton(
              onPressed: () {},
              child: SizedBox(
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
