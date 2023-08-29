import 'package:assignment1/Providers/ToDo_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ToDoList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ToDo_Provider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ToDoList(),
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }
}
