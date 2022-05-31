import 'package:flutter/material.dart';

class counterProvider extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
    print('button Tapped');
  }
}
