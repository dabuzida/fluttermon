import 'package:flutter/material.dart';
import 'package:fluttermon/fruit_controller.dart';

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
    return Column(
      children: [
        Text('p1.name22'),
        AnimatedBuilder(
          animation: FruitController(),
          builder: (BuildContext context, Widget? child) {
            print('>> AnimatedBuilder');

            return Text('>> ${FruitController().name} <<');
          },
        ),
      ],
    );
  }
}
