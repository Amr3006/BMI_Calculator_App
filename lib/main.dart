import 'package:calories_calculator/InputScreen.dart';
import 'package:calories_calculator/MainColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inputScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: mainColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: mainColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light
          )
        ),
        scaffoldBackgroundColor: mainColor,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          bodyMedium: TextStyle(
            color: Colors.grey[300],
            fontWeight: FontWeight.bold,
            fontSize: 26
          )
        ),
      ),
    );
  }
}
