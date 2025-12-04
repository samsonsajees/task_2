import 'package:flutter/material.dart';

class UserNameProvider with ChangeNotifier {
  // Default value stored to reset later if needed
  static const String _defaultName = "christo";
  
  // Creating a variable inside a provider
  String _userName = _defaultName;

  String get userName => _userName;

  // Updating the variable with a new value
  void updateName() {
    _userName = "Caddayn";
    notifyListeners();
  }

  // --- COMPLIANCE FIX ---
  // Rule 5: All providers must have a 'clearProvider' function 
  void clearProvider() {
    _userName = _defaultName;
    notifyListeners();
  }
}