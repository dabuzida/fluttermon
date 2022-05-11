import 'package:flutter/material.dart';

class Counterr extends StatefulWidget {
  const Counterr({Key? key}) : super(key: key);

  @override
  State<Counterr> createState() => _CounterrState();
}

class _CounterrState extends State<Counterr> {
  Person p = Person();
  int i = 0;
  final double _width = 700;
  // static const double _width = 700;
  final double _height = 700;
  @override
  void initState() {
    super.initState(); // initState()의 처음에 위치해야함
    print('initState');
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
    print('didChangeDependencies2');
  }

  @override
  void dispose() {
    print('dispose');
    p.dispose();
    super.dispose(); // dispose()의 마지막에 위치해야
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    print('build()');
    return Center(
      child: Container(
        color: Colors.white,
        width: _width,
        height: _height,
        child: Column(
          children: <Widget>[
            _display(),
            Row(
              children: <Widget>[
                Expanded(child: _decrease()),
                Expanded(child: _increase()),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _display() {
    return SizedBox(
      width: _width,
      height: 500,
      child: Center(
        child: Text(
          i.toString(),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 100,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

  Widget _decrease() {
    return TextButton(
      onPressed: () {
        setState(() {
          i--;
        });
      },
      child: const SizedBox(
        height: 200,
        child: Center(
          child: Text(
            '감소',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 50,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }

  Widget _increase() {
    return TextButton(
      onPressed: () {
        setState(() {
          i++;
        });
      },
      child: const SizedBox(
        height: 200,
        child: Center(
          child: Text(
            '증가',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 50,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}

class Person {
  String? name;
  int? age;

  void dispose() {
    print('Person dispose()');
  }
}
