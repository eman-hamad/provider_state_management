import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int counter = 0;
  // int get_Counter() => counter;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
