import 'package:flutter/material.dart';

import 'Task1.dart';
import 'Task2.dart';
import 'Task3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task3(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
