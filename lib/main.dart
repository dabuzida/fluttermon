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
        home: Center(
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
              'asdfsdfsdfdasdfsdfsdfsdasdfsdfsdfsd',
            )),
          ),
        )
        /* Scaffold(
        body: Container(
          constraints: BoxConstraints(
            maxHeight: 700,
            maxWidth: 700,
          ),
          color: Colors.amber,
          // height: 500,
          // width: 500,
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
        ),
      ), */
        );
  }

/* 
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    Widget listView = ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Text('listView'),
        for (var i = 0; i < 2000; i++) item('listView'),
      ],
    );
    final List<String> color = <String>['red', 'blue', 'green'];
    Widget listViewBuilder = ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: 6000,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 23, 20, 204),
            // color: Colors.'${color}',
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 5,
                style: BorderStyle.solid,
              ),
            ),
          ),
          height: 50,
          child: const Center(
            child: Text(
              'listViewBuilder',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
    Widget singleChildScrollView = SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text('singleChildScrollView'),
          for (var i = 0; i < 5000; i++) item('singleChildScrollView'),
        ],
      ),
    );

    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'f-mon',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView vs ListView.builder vs SingleChildScrollView+Column'),
          backgroundColor: const Color.fromARGB(255, 17, 180, 80),
          centerTitle: true,
          // elevation: 0,
        ),
        body: listView,
        // body: listViewBuilder,
        // body: singleChildScrollView,
      ),
    ); 
  }
*/

}
