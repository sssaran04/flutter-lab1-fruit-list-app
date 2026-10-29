import 'package:flutter/material.dart';

import 'screens/fruit_list_screen.dart';

// Entry point of the application.
void main() {
  runApp(const FruitListApp());
}

// Root widget: MaterialApp configured with a Material 3 theme.
class FruitListApp extends StatelessWidget {
  const FruitListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit List App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const FruitListScreen(),
    );
  }
}
