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
      title: '웹사이트: 1분코딩 레이아웃',
      home:

          // Scaffold(
          //     body:

          AspectRatio(
              // decoration: const BoxDecoration(
              //   color: Colors.blueGrey,
              // ),
              aspectRatio: 3 / 2,
              child: Column(
                children: [
                  _header(),
                  Spacer(),
                  _content(),
                  Spacer(),
                  _footer(),
                ],
              )

              // )

              ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        Column(children: [Text('good')])
      ],
    );
  }

  Widget _content() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_contentLeft(), _contentCenter(), _contentRight()],
    );
  }

  Widget _contentLeft() {
    return Column(
      children: [Text('good')],
    );
  }

  Widget _contentCenter() {
    return Column(
      children: [Text('good')],
    );
  }

  Widget _contentRight() {
    return Column(
      children: [Text('good')],
    );
  }

  Widget _footer() {
    return Row(
      children: [Text('good')],
    );
  }
}
