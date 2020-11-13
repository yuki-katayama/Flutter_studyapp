import 'package:flutter/material.dart';

class DataControlModel extends ChangeNotifier {
  String yukiText = 'yuki';

  void changeText() {
    yukiText = "changedText";
    notifyListeners();
  }
}
