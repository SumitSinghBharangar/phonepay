import 'package:flutter/material.dart';

// PhonePe Purple
const Color phonePePrimary = Color(0xFF5F259F);

final ThemeData phonePeLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: phonePePrimary,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 1,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: phonePePrimary,
    unselectedItemColor: Colors.grey[600],
    elevation: 10,
    type: BottomNavigationBarType.fixed,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: phonePePrimary,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.black87),
    titleMedium: TextStyle(color: Colors.black),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: phonePePrimary,
    secondary: phonePePrimary,
    brightness: Brightness.light,
  ),
);

final ThemeData phonePeDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: phonePePrimary,
  scaffoldBackgroundColor: Color(0xFF121212),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    elevation: 1,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1E1E1E),
    selectedItemColor: phonePePrimary,
    unselectedItemColor: Colors.grey[400],
    elevation: 10,
    type: BottomNavigationBarType.fixed,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: phonePePrimary,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
  ),
  cardTheme: CardTheme(
    color: Color(0xFF1E1E1E),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: phonePePrimary,
    secondary: phonePePrimary,
    brightness: Brightness.dark,
  ),
);
