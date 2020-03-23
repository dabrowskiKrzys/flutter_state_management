import 'package:flutter/material.dart';

class UserSettings with ChangeNotifier {
  double _fontSize = 14.0;
  double get fontSize => _fontSize;
  void setFontSize(double newValue) {
    _fontSize = newValue;
    notifyListeners();
  }

  bool _boldFont = false;
  bool get boldFont => _boldFont;
  void setBoldFont(bool newValue) {
    _boldFont = newValue;
    notifyListeners();
  }

  TextStyle get textStyle {
    return TextStyle(
        fontWeight: boldFont ? FontWeight.bold : FontWeight.normal,
        fontSize: _fontSize);
  }
}
