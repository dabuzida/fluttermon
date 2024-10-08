import 'package:flutter/material.dart';
import 'package:fluttermon/fruit_controller.dart';

class TestSetState extends StatefulWidget {
  const TestSetState({Key? key}) : super(key: key);

  @override
  State<TestSetState> createState() => _TestSetStateState();
}

class _TestSetStateState extends State<TestSetState> {
  int i = 0;
  final double _width = 700;
  final double _height = 700;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        width: _width,
        height: _height,
        child: ListView(
          children: <Widget>[
            _display(),
            Row(
              children: <Widget>[
                Expanded(child: _decrease()),
                Expanded(child: _increase()),
              ],
            ),
            Wrap(
              children: [
                ElevatedButton(
                  child: Text('Banana'),
                  onPressed: () {
                    FruitController().setName(name: 'Banana');
                  },
                ),
                ElevatedButton(
                  child: Text('Apple'),
                  onPressed: () {
                    FruitController().setName(name: 'Apple');
                  },
                ),
              ],
            ),
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
        print(i);
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
