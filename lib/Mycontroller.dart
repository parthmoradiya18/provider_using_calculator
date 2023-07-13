import 'package:flutter/material.dart';

class Mycontroller extends ChangeNotifier {


  double number = 0;
  String view = "";
  String frist = "";
  String temp = "";

  num_fun(String str) {
    view = view + str;
    notifyListeners();
  }

  C_fun(String cle) {
    cle = "";
    view = cle;
    notifyListeners();
  }

  ce_fun(String ce) {
    if (view.length > 0) {
      view = ce.substring(0, view.length - 1);
    }
    notifyListeners();
  }

  sum_fun(String sum) {
    frist = view;
    temp = sum;
    view = "";
    notifyListeners();
  }

  equal_fun(String select) {
    view = select;
    if (temp == "+") {
      number = double.parse(frist) + double.parse(view);
    }
    else if (temp == "-") {
      number = double.parse(frist) - double.parse(view);
    }
    else if (temp == "*") {
      number = double.parse(frist) * double.parse(view);
    }
    else if (temp == "/") {
      number = double.parse(frist) / double.parse(view);
    }
    else if (temp == "%") {
      number = double.parse(frist) % double.parse(view);
    }
    view = number.toString();
    notifyListeners();
  }

}