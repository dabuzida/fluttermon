import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// 만든 프로젝트 모듈로 분리하여 관리
import 'calculator.dart';
import 'test_datetime.dart';
import 'test_ListViewBuilder.dart';

import 'test1.dart';
import 'package:fluttermon/test3.dart';

import 'test_setstate.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

void showBaselines() {
  debugPaintBaselinesEnabled = true;
}

String _1vs1 = 'https://cglink.com/files/attach/images/1589/713/001/UV.Grid.jpg';
String _2vs3 = 'https://images.unsplash.com/photo-1534237710431-e2fc698436d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVpbGRpbmd8ZW58MHx8MHx8&w=1000&q=80';
void main() {
  // print('main()');
  // showLayoutGuidelines();
  // showBaselines();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('MyApp');
    return MaterialApp(
      title: '_100m',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[200],
        appBar: AppBar(
          // title: Text('test setState'),
          centerTitle: true,
        ),
        // body: const TestSetState(),
        // body: TestDateTime(),
        // body: ListViewBuilder(), // 계산기 관련 테스트
        body: Calculator(),
        /* body: Center(
          child: Red(),
        ), */
      ),
    );
  }
}

class Red extends StatefulWidget {
  const Red({Key? key}) : super(key: key);

  @override
  State<Red> createState() {
    print('createState()');
    return _RedState();
  }
}

class _RedState extends State<Red> {
  int xx = 0xFFFF0000;
  @override
  Widget build(BuildContext context) {
    print('red');
    return GestureDetector(
      onTap: () => {
        if (xx == 0xFFFF0000)
          {
            setState(() {
              xx = 0xFF0000FF;
            })
          }
        else
          {
            {
              setState(() {
                xx = 0xFFFF0000;
              })
            }
          }
      },
      child: Container(
        width: 400,
        height: 400,
        color: Color(xx),
        child: Column(children: [
          Green(),
          Orange(
              //
              //key: UniqueKey(),
              ),
        ]),
      ),
    );
  }
}

class Green extends StatelessWidget {
  const Green({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('green');
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
    );
  }
}

class Orange extends StatefulWidget {
  const Orange({Key? key}) : super(key: key);

  @override
  State<Orange> createState() => _OrangeState();
}

class _OrangeState extends State<Orange> {
  final _random = new Random();
  int next(int min, int max) => min + _random.nextInt(max - min);

  int? a;

  @override
  void initState() {
    print('initState');
    int n = next(1, 3);
    if (n == 1)
      a = 0xFF00FFFF;
    else if (n == 2)
      a = 0xFFFFFF00;
    else
      a = 0xFFFF00FF;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('orange');
    return Container(
      width: 100,
      height: 100,
      color: Color(a!),
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
