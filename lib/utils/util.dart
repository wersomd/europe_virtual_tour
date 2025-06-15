import 'package:flutter/material.dart';

DateTime toDate({required String dateTime}) {
  final utcDateTime = DateTime.parse(dateTime);
  return utcDateTime.toLocal();
}

SnackBar getSnackBar(String message, Color backgroundColor) {
  SnackBar snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 20),
    ),
    backgroundColor: backgroundColor,
    dismissDirection: DismissDirection.up,
    behavior: SnackBarBehavior.floating,
  );
  return snackBar;
}

class ApiUtil {
  static String apiKey =
      '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';
  static String baseUrl = 'https://api.openai.com/v1/chat/completions';
}
