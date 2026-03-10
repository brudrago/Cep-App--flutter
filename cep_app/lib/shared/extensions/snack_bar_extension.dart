import 'package:flutter/material.dart';

enum SnackBarType {
  success,
  error,
}

extension SnackBarExtension on BuildContext {
  void showSnackBar(String message, SnackBarType type) {
    ScaffoldMessenger.of(this)
    .hideCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
            content: Text(message),
            backgroundColor: type == SnackBarType.success ? Colors.green : Colors.redAccent,
            duration: const Duration(seconds: 3),
        ));
  }
}