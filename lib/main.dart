import 'package:flutter/material.dart';
import 'package:todo_list/tasks/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 163, 19, 19)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
