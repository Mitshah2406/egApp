import 'package:flutter/material.dart';
import 'package:training_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

final ColorScheme kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(1, 9, 132, 227),
  brightness: Brightness.light,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: kColorScheme,
      ),
      home: const MainScreen(),
    );
  }
}
