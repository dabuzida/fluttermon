// sampels & tutorials > codelabs > Designing a Flutter UI > Basic Flutter layout concepts
// main_docs_layout2

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:

            // Container(
            //     decoration: BoxDecoration(
            //       border: Border.all(
            //         color: Colors.lightGreen,
            //         width: 8,
            //       ),
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     child:

            Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlueBox(),
        BlueBox(),
        Expanded(
          child: BlueBox(),
        ),
        BlueBox(),
      ],
    ));

    // ));
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
