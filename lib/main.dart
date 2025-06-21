import 'package:flutter/material.dart';
import 'package:phonepay/common/constants/apptheme.dart';
import 'package:phonepay/features/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: phonePeLightTheme,
      darkTheme: phonePeDarkTheme,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
