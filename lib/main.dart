import 'package:flutter/material.dart';
import 'perpustakaan/home_perpustakaan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpustakaan Kampus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8194D6),
        ),
        useMaterial3: true,
      ),
      home: const HomePerpustakaan(),
    );
  }
}