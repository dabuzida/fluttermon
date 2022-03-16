// 1분코딩 웹사이트 레이아웃
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = true;
}

void showBaselines() {
  debugPaintBaselinesEnabled = true;
}

void main() {
  showLayoutGuidelines();
  // showBaselines();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '웹사이트: 1분코딩 레이아웃',
        home: SingleChildScrollView(
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white70,
                ),
                padding: const EdgeInsets.all(10.0),
                // margin: const EdgeInsets.all(10.0),
                height: 1100,
                child: Container(
                    child:
                        // Scaffold(
                        //     body:
                        // AspectRatio(
                        // decoration: const BoxDecoration(
                        //   color: Colors.blueGrey,
                        // ),
                        // aspectRatio: 3 / 2,
                        // child:
                        Column(
                  children: [
                    Expanded(
                      flex: 7,
                      child: _header(),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 28,
                      child: _content(),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 3,
                      child: _footer(),
                    ),
                  ],
                )))));
  }

  Widget _header() {
    final dateToday = DateTime.now();
    String date = dateToday.toString().substring(0, 10);
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$date',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
              ],
            )),
        Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 210,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 400,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Image.asset(
                    'images/lake.jpg',
                    width: 210,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('1분코딩',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                Text('<튜토리얼/>',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                Text('아티클',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                Text('제품',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
                Text('여기는',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    )),
              ],
            )),
      ],
    );
  }

  Widget _content() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1, child: _contentLeft()),
        Expanded(flex: 4, child: _contentCenter()),
        Expanded(flex: 1, child: _contentRight()),
      ],
    );
  }

  Widget _contentLeft() {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('good'),
            Divider(
              // height: 50,
              // thickness: 50,
              // indent: 20,
              // endIndent: 20,

              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text('최신 튜토리얼',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.black,
                      )),
                )
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            Text('good'),
            Text('good'),
            Text('good'),
            Text('good'),
          ],
        ));
  }

  Widget _contentCenter() {
    return Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('1분코딩',
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.black,
                      ))
                ])),
            Expanded(
                flex: 16,
                // child: IgnorePointer(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(children: [
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                    ])),
                    Expanded(
                        child: Column(children: [
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                    ])),
                    Expanded(
                        child: Column(children: [
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                    ])),
                    Expanded(
                        child: Column(children: [
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Card(
                        elevation: 0,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/lake.jpg',
                              // width: 210,
                              // height: 100,
                              // fit: BoxFit.cover,
                            ),
                            Text('Nouveautés'),
                          ],
                        ),
                      )),
                    ])),
                  ],
                )),
            Expanded(
                flex: 3,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('1분코딩',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Colors.black,
                              ))
                        ]))),
          ],
        ));
  }

  Widget _contentRight() {
    return Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Column(
          children: [Text('good')],
        ));
  }

  Widget _footer() {
    return Row(
      children: [Text('good')],
    );
  }
}
