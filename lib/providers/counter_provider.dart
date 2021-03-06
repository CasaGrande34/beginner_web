import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
