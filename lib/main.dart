import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttermon/lavoratery.dart';
import 'package:fluttermon/lavoratory.dart';

// 만든 프로젝트 모듈로 분리하여 관리
import 'calculator.dart';
import 'factory.dart';
// import 'pprovider.dart';
import 'red.dart';
import 'test_datetime.dart';
import 'laboratory.dart';

import 'test1.dart';
import 'package:fluttermon/test3.dart';

import 'test_setstate.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

void showBaselines() {
  debugPaintBaselinesEnabled = true;
}

void main() {
  // showLayoutGuidelines();
  // showBaselines();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'fluttermon',
      debugShowCheckedModeBanner: false,
      home: Gate(),
    );
  }
}

class Gate extends StatefulWidget {
  const Gate({Key? key}) : super(key: key);

  @override
  State<Gate> createState() => _GateState();
}

class _GateState extends State<Gate> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Calculator(),
    TestSetState(),
    TestDateTime(),
    Laboratory(),
    Red(),
    Factory(),
    Lavoratory(),
    Lavoratery(),
  ];

  final List<Icon> _listIcon = <Icon>[
    const Icon(Icons.calculate),
    const Icon(Icons.eco_outlined),
    const Icon(Icons.school),
    const Icon(Icons.science),
    const Icon(Icons.restaurant),
    const Icon(Icons.dark_mode_sharp),
    const Icon(Icons.anchor),
    const Icon(Icons.hotel_class),
  ];

  Widget _indexedStack() {
    return IndexedStack(
      index: _selectedIndex,
      children: _widgetOptions,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  PreferredSizeWidget _appbar() {
    return AppBar(
      title: Text(_widgetOptions[_selectedIndex].toString()),
      elevation: 0,
      foregroundColor: Colors.yellow[300],
      backgroundColor: Colors.purple,
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[];

    for (int i = 0; i < _widgetOptions.length; i++) {
      items.add(
        BottomNavigationBarItem(
          icon: _listIcon[i],
          label: _widgetOptions[i].toString(),
          backgroundColor: Colors.blue,
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: _appbar(),
      body: /* Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ), */
          _indexedStack(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.yellowAccent,
        items: items,
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'computer',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: testctn(),
        ),
      ),
    );
  }

  Widget testctn() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ctn(50, 50, 0xff33ffff),
            ctn(50, 50, 0xffcc0000),
            ctn(50, 50, 0xffccff00),
            ctn(50, 50, 0xff3366cc),
            ctn(50, 50, 0xff003300),
            ctn(50, 50, 0xff00FF99),
            ctn(50, 50, 0xffFFCC00),
            ctn(50, 50, 0xff9966FF),
            ctn(50, 50, 0xff663300),
            ctn(50, 50, 0xff669999),
            ctn(50, 50, 0xff00FF99),
            ctn(50, 50, 0xff99CC00),
            ctn(50, 50, 0xff33ffff),
            ctn(50, 50, 0xffcc0000),
            ctn(50, 50, 0xffccff00),
            ctn(50, 50, 0xff3366cc),
            ctn(50, 50, 0xff003300),
            ctn(50, 50, 0xff00FF99),
            ctn(50, 50, 0xffFFCC00),
            ctn(50, 50, 0xff9966FF),
            ctn(50, 50, 0xff663300),
            ctn(50, 50, 0xff669999),
            ctn(50, 50, 0xff00FF99),
            ctn(50, 50, 0xff99CC00),
            ctn(50, 50, 0xff33ffff),
            ctn(50, 50, 0xffcc0000),
            ctn(50, 50, 0xffccff00),
            ctn(50, 50, 0xff3366cc),
            ctn(50, 50, 0xff003300),
            ctn(50, 50, 0xff00FF99),
            ctn(50, 50, 0xffFFCC00),
            ctn(50, 50, 0xff9966FF),
            ctn(50, 50, 0xff663300),
            ctn(50, 50, 0xff669999),
            ctn(50, 50, 0xff00FF99),
          ],
        ),
        Container(
          width: double.infinity,
          height: 5,
          color: const Color(0xffff0000),
        ),
        Container(
          width: double.infinity,
          height: 5,
          color: const Color(0xffff0000),
        ),
        Row(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints(
                minWidth: 300,
                minHeight: 300,
                maxWidth: 400,
                maxHeight: 400,
              ),
              color: const Color(0xff000000),
            ),
            Container(
              width: 200,
              height: 200,
              constraints: const BoxConstraints(
                minWidth: 300,
                minHeight: 300,
                maxWidth: 400,
                maxHeight: 400,
              ),
              color: const Color(0xff6699FF),
            ),
            Container(
              width: 350,
              height: 350,
              constraints: const BoxConstraints(
                minWidth: 300,
                minHeight: 300,
                maxWidth: 400,
                maxHeight: 400,
              ),
              color: const Color(0xffee1155),
              child: Container(
                width: 200,
                height: 200,
                color: const Color(0xff778833),
              ),
            ),
            Container(
              // width: 300,
              // height: 300,
              constraints: const BoxConstraints(
                minWidth: 300,
                minHeight: 300,
                // maxWidth: 400,
                // maxHeight: 400,
              ),
              color: const Color(0xff99bbcc),
              child: Container(
                width: 100,
                height: 100,
                color: const Color(0xff44dd99),
              ),
            ),
            //

            Container(
              constraints: const BoxConstraints(
                minWidth: 300,
                minHeight: 300,
                maxWidth: 400,
                maxHeight: 400,
              ),
              color: const Color(0xff786858),
              child: Container(
                color: const Color(0xffffff00),
                width: 2250,
                height: 2250,
              ),
            ),
          ],
        ),
      ],
      /* child: Center(
                child: Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  constraints: const BoxConstraints(
                    maxHeight: 300.0,
                    maxWidth: 300.0,
                    minWidth: 300.0,
                    minHeight: 300.0,
                  ),
                  child: (Text(
                    'asdfsdfssdfsd',
                  )),
                ),
              ), */
    );
  }

  Widget ctn(double x, double y, int rgb) {
    return Container(
      width: x,
      height: y,
      color: Color(rgb),
      child: Center(
        child: FittedBox(
          child: Text(
            'width: $x',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xffffffff), //0xff887766
            ),
          ),
        ),
      ),
    );
  }

  Widget ctn2(
    double p,
    double q,
    /* double minX,
    double minY,
    double maxX,
    double maxY, */
    // int rgb,
    double r,
    double s,
  ) {
    return Container(
      width: p,
      height: q,
      constraints: const BoxConstraints(
        minWidth: 300,
        minHeight: 300,
        maxWidth: 400,
        maxHeight: 400,
      ),
      color: const Color(0xff000000),
      child: Container(
        width: r,
        height: s,
        color: const Color(0xff9966FF),
        child: FittedBox(
          child: Text(
            'width: $p',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff00ff66),
            ),
          ),
        ),
      ),
    );
  }
}
