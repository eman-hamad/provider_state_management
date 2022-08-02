import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;
 //int get myCounter() => count;

  void incrementCounter() {
    count++;
    notifyListeners();
  }

   void decrementCounter() {
    if (count > 0) {
      count--;
    }
    notifyListeners();
  }

   void resetCounter() {
    count=0;
    notifyListeners();
  }
}