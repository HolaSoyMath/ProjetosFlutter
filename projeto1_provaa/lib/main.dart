import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto 2 da prova',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.lightBlue,
            title: const Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text("Projeto 2 da prova - Example",
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        body: Container(
          decoration:
              BoxDecoration(color: const Color.fromRGBO(245, 245, 247, 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
            child: ListView(
              children: [
                Contato('Rogerio', "Rogerio@example.com"),
                Contato('Marcos', "Marcos@example.com"),
                Contato('Afonso', "Afonso@example.com"),
                Contato('Felipe', "Felipe@example.com"),
                Contato('Carlos', "Carlos@example.com")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Contato extends StatefulWidget {
  final String name;
  final String email;

  const Contato(this.name, this.email, {super.key});

  @override
  State<Contato> createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(
              248, 248, 250, 1), // Fundo cinza// Borda arredondada
        ),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(39, 148, 238, 1),
                shape: BoxShape.circle,
              ),
              height: 50,
              width: 50,
              child: Center(
                child: Text(widget.name[0],style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          title: Text(
            widget.name,
            style: TextStyle(fontWeight: FontWeight.bold), // Título em negrito
          ),
          subtitle: Text(widget.email), // Subtítulo
        ),
      ),
    );
  }
}
