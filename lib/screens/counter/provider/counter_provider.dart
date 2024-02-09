import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
  int counter = 0;
  void increment(){
    counter ++;
    notifyListeners();
  }

 

  int get counterValue=>counter;
}