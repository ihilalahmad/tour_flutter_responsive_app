import 'package:flutter/material.dart';
import 'package:responsive_app_flutter/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tour App - Responsive',
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: const HomeScreen(),
    );
  }
}
