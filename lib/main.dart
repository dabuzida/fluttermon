import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  const MyApp({Key? key}) : super(key: key);
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

  Widget item(String identifierText) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.red[600],
            border: const Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 5,
                style: BorderStyle.solid,
              ),
            ),
          ),
          height: 50,
          child: Center(
            child: Text(
              identifierText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 7, 167, 68),
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 5,
                style: BorderStyle.solid,
              ),
            ),
          ),
          height: 50,
          child: Center(
            child: Text(
              identifierText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 23, 20, 204),
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 5,
                style: BorderStyle.solid,
              ),
            ),
          ),
          height: 50,
          child: Center(
            child: Text(
              identifierText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
