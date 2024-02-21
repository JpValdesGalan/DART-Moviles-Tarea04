import 'package:flutter/material.dart';
import 'package:tarea04/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Look',
      home: HomePage(),
    );
  }
}
