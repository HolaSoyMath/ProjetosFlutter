import 'package:flutter/material.dart';
import 'package:projeto3_prova/screens/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto 3 da prova',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const Home(),
    );
  }
}