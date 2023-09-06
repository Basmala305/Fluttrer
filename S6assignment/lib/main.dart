import 'package:assignment1/Game.dart';
//import 'package:assignment1/Widget/Contanier.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Game(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
