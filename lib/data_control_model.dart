import 'package:flutter/material.dart';

class DataControlModel extends ChangeNotifier {
  String yuki_text = 'yuki';

  void ChangeText() {
    yuki_text = "changedText";
    notifyListeners();
  }
}
