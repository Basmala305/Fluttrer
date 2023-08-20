import 'package:flutter/material.dart';
import 'package:flutter_app/Task2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task2(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
