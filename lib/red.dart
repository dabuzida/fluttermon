import 'dart:math';

import 'package:flutter/material.dart';

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
    return Container(
      width: 100,
      height: 100,
      color: Color(a!),
    );
  }
}
