import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttermon/test3.dart';

import 'test1.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

void showBaselines() {
  debugPaintBaselinesEnabled = true;
}

void main() {
  // showLayoutGuidelines();

  // showBaselines();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String _1vs1 = 'https://cglink.com/files/attach/images/1589/713/001/UV.Grid.jpg';
  String _2vs3 = 'https://images.unsplash.com/photo-1534237710431-e2fc698436d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVpbGRpbmd8ZW58MHx8MHx8&w=1000&q=80';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Constraint Sample',
        // debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ctn(400, 50, 0xff6633FF),
                  ctn(100, 100, 0xff33ffff),
                  ctn(150, 150, 0xffcc0000),
                  ctn(200, 200, 0xffccff00),
                  ctn(250, 250, 0xff3366cc),
                  ctn(300, 300, 0xff003300),
                  ctn(350, 350, 0xff00FF99),
                  ctn(400, 400, 0xff99CC00),
                ],
              ),
              Container(
                width: double.infinity,
                height: 5,
                color: const Color(0xffff0000),
              ),
              Row(
                children: <Widget>[
                  Container(
                    color: const Color(0xff33ffff),
                    constraints: const BoxConstraints(
                      minWidth: 300,
                      minHeight: 300,
                      maxWidth: 400,
                      maxHeight: 400,
                    ),
                  ),
                  Container(
                    color: const Color(0xffcc6666),
                    width: 200,
                    height: 200,
                    constraints: const BoxConstraints(
                      minWidth: 300,
                      minHeight: 300,
                      maxWidth: 400,
                      maxHeight: 400,
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
          ),
        ));
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
            color: Color(0xffffffff),
          ),
        ),
      )),
      // 0xff887766
    );
  }

  Widget ctnForConstraints(double x, double y, double minX, double minY, double maxX, double maxY, int rgb) {
    return Container(
      width: x,
      height: y,
      constraints: BoxConstraints(
        minWidth: minX,
        minHeight: minY,
        maxWidth: maxX,
        maxHeight: maxY,
      ),
      color: Color(rgb),
      child: Center(
          child: FittedBox(
        child: Text(
          'width: $x',
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Color(0xffffffff),
          ),
        ),
      )),
      // 0xff887766
    );
  }
}
