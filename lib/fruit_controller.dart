import 'package:flutter/material.dart';

class FruitController with ChangeNotifier {
  factory FruitController() => _instance;
  FruitController._internal();
  static final FruitController _instance = FruitController._internal();

  String name = 'mango';

  void setName({required String name}) {
    FruitController().name = name;

    notifyListeners();
  }
}
