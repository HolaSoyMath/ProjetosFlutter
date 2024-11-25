import 'package:flutter/material.dart';
import 'package:projeto3_prova/data/transferencia_lista.dart';
import 'package:projeto3_prova/screens/home.dart';

// Chamar o RunApp envolvido pela classe das listas para que atualize a lista dentro do app
void main() async {
  runApp(
    TransferenciasLista(child: const MyApp(),),
  );
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