import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  void get unfocus => FocusScope.of(this).unfocus();
  void showToast(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void showErrorDialog(String exception) {
    showDialog(
      context: this,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text("Bir hata oluştu"),
          content: Text(exception),
          actions: [
            TextButton(
              onPressed: () {
                pop();
              },
              child: const Text("OK"),
            )
          ],
        );
      },
    );
  }

  void goWithDeeplink(int? statusCode, String url) {}
}
