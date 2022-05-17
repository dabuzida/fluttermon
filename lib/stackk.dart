import 'package:flutter/material.dart';

class Stackk extends StatefulWidget {
  const Stackk({Key? key}) : super(key: key);

  @override
  State<Stackk> createState() => _StackkState();
}

class _StackkState extends State<Stackk> {
  List length = [50, 70, 200];
  int selectedIndex = 0;
  bool _visible = true;
  Color _teal = Colors.teal;
  Color _transparent = Color.fromARGB(0, 0, 0, 0);
  int x = 22;
  List _colors = [Color.fromARGB(0, 112, 58, 22), Color.fromARGB(255, 147, 233, 111)];
  late Color _color;

  @override
  void initState() {
    super.initState();
    _color = Color.fromARGB(255, 112, 58, 22);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => setState(() {
                _color = Color.fromARGB(0, 1, 1, 1);
              }),
              child: Container(
                decoration: BoxDecoration(
                  color: _color,
                ),
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 500,
            height: 500,
            child: Container(
              color: Colors.grey[300],
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  // 사라지냐 공간차지하냐 , 공간 차지하면서 투명/ 불투명
                  Positioned(
                    top: 10,
                    child: Row(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => setState(() {
                              // _visible = !_visible;
                              // _teal = Color.fromARGB(0, 0, 0, 0);
                              print(Colors.amber.toString());
                            }),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () => setState(() {
                              _visible = !_visible;
                              // _teal = Color.fromARGB(0, 0, 0, 0);
                              print(Colors.amber.toString());
                            }),
                            child: Visibility(
                              visible: _visible,
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              maintainInteractivity: true,
                              child: Container(
                                width: 100,
                                height: 100,
                                color: _teal,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    // bottom: 50,
                    top: 80,
                    // left: 50,
                    // right: 50,
                    child: Visibility(
                      visible: false,
                      child: Container(
                        width: 500,
                        height: 400,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.brown,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.amber,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   width: length[selectedIndex],
                  //   height: length[selectedIndex],
                  //   color: Colors.blue,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
