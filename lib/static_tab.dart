import 'package:flutter/material.dart';

class StaticTab extends StatefulWidget {
  const StaticTab({Key? key}) : super(key: key);

  @override
  State<StaticTab> createState() => _StaticTabState();
}

class _StaticTabState extends State<StaticTab> {
  // List items = ['field1', 'field2', 'field3'];
  int selectedIndex = 0;
  static const List items = ['field1', 'field2', 'field3'];
  // Container x =
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 700,
        height: 700,
        color: Colors.white,
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Text('text1'),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Text('text2'),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Text('text3'),
                ),
              ),
            ],
          ),
          Expanded(
              flex: 50,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.green[50],
                child: Center(child: Text(items[selectedIndex])),
              ))
        ]),
      ),
    );
  }
}
