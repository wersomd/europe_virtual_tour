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
  static String apiKey = 'YOUR_API_KEY';
  static String baseUrl = 'BASE_URL';
}
