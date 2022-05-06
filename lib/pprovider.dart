import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pprovider extends StatefulWidget {
  const Pprovider({Key? key}) : super(key: key);

  @override
  State<Pprovider> createState() => _PproviderState();
}

class _PproviderState extends State<Pprovider> {
  @override
  Widget build(BuildContext context) {
    return Provider<Counter>(
      // Counter에 대한 Provider를 생성했다.
      create: (_) => Counter(),
      // child: Center(child: Text(),) // Counter의 숫자를 보여주는 위젯이 들어갈 것이다.
    );
  }
}

class Counter {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }
}
