import 'package:assignment1/Registration.dart';
import 'package:assignment1/forget.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'log.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Registration.id,
      routes: {
        Registration.id: (BuildContext context) => const Registration(),
        forget.id: (BuildContext context) => forget(),
        Home.id: (BuildContext context) => const Home(),
        log.id: (BuildContext context) => const log(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
