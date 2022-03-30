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
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'NAVER',
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: FittedBox(
              // fit: BoxFit.contain,
              // fit: BoxFit.cover,
              // fit: BoxFit.fill,
              // fit: BoxFit.fitHeight,
              // fit: BoxFit.fitWidth,
              // fit: BoxFit.scaleDown,
              // fit: BoxFit.none,
              child: Text(
                'aaa',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 41, 10, 180),
                ),
              ),
            ),
          ),
        ),

        /* SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.fromLTRB(50),
            // margin: EdgeInsets.fromLTRB(1,1,1,),
            color: Colors.white,
            height: 1100,
            child: Column(
              children: [
                Expanded(
                  flex: 11,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(356.5, 0, 356.5, 0),
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      children: [
                        Text('d'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Row(
                      children: [
                        Text('d'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    child: Row(
                      children: [
                        Text('d'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: Row(
                      children: [
                        Text('d'),
                      ],
                    ),
                  ),
                ),
                // Column(children: [
                //   Text('ddddddddddddddddddddddddddd',
                //       style: const TextStyle(
                //         fontSize: 100,
                //         letterSpacing: 1,
                //       ))
                // ]),
              ],
            ),
          ),
        ), */
      ),
    );
  }
}
