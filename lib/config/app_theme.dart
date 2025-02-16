import 'package:flutter/material.dart';
import 'package:app/config/size_config.dart';

final width = SizeConfig.screenW;

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.grey.shade900,
  primaryColor: Colors.black,
  colorScheme: const ColorScheme.dark(),
  iconTheme: const IconThemeData(color: Colors.white),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    indicatorColor: Colors.white,
    unselectedLabelColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 2,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.white,
  colorScheme: const ColorScheme.light(),
  iconTheme: const IconThemeData(color: Colors.indigo),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  indicatorColor: Colors.deepPurpleAccent,
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.indigo,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 2,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    ),
  ),
);
