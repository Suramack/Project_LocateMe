import 'package:flutter/material.dart';
import 'package:locate_me/screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Locate me',
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
