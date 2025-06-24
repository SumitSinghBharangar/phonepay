import 'package:flutter/material.dart';

// Primary Colors
const Color primaryPurple = Color(0xFF5F259F);
const Color primaryLight = Color(0xFF8B5CF6);
const Color secondaryBlue = Color(0xFF1E40AF);
const Color successGreen = Color(0xFF059669);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryPurple,
  
  scaffoldBackgroundColor: Color(0xFFFAFAFA),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryPurple,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: primaryPurple,
    unselectedItemColor: Colors.grey[600],
    elevation: 8,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryPurple,
      foregroundColor: Colors.white,
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primaryPurple,
      side: BorderSide(color: primaryPurple, width: 1.5),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryPurple,
    foregroundColor: Colors.white,
    elevation: 4,
  ),
  textTheme: TextTheme(
    displayLarge:
        TextStyle(color: Color(0xFF1F2937), fontWeight: FontWeight.bold),
    displayMedium:
        TextStyle(color: Color(0xFF1F2937), fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(color: Color(0xFF1F2937)),
    bodyMedium: TextStyle(color: Color(0xFF374151)),
    bodySmall: TextStyle(color: Color(0xFF6B7280)),
    titleLarge:
        TextStyle(color: Color(0xFF1F2937), fontWeight: FontWeight.w600),
    titleMedium:
        TextStyle(color: Color(0xFF1F2937), fontWeight: FontWeight.w500),
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 2,
    shadowColor: Colors.black.withOpacity(0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey.shade50,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: primaryPurple, width: 2),
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryPurple,
    secondary: primaryPurple,
    surface: Colors.white,
    background: Color(0xFFFAFAFA),
    brightness: Brightness.light,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryPurple,
  scaffoldBackgroundColor: Color(0xFF121212),
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromARGB(255, 25, 25, 25),
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF121212),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey[400],
    elevation: 8,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryPurple,
      foregroundColor: Colors.white,
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: primaryLight,
      side: BorderSide(color: primaryLight, width: 1.5),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryPurple,
    foregroundColor: Colors.white,
    elevation: 4,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Color(0xFFE5E7EB)),
    bodySmall: TextStyle(color: Color(0xFF9CA3AF)),
    titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
  ),
  cardTheme: CardTheme(
    color: Color(0xFF1E1E1E),
    elevation: 4,
    shadowColor: Colors.black.withOpacity(0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF374151),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xFF4B5563)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xFF4B5563)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: primaryLight, width: 2),
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryPurple,
    secondary: primaryPurple,
    surface: Color(0xFF1E1E1E),
    background: Color(0xFF121212),
    brightness: Brightness.dark,
  ),
);
