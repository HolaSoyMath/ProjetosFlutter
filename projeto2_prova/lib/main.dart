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
          decoration: BoxDecoration(color: const Color.fromRGBO(245, 245, 247, 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
            child: ListView(
              children: [
                Anotacao('Item #0', "Subtitle 0"),
                Anotacao('Item #1', "Subtitle 1"),
                Anotacao('Item #2', "Subtitle 2"),
                Anotacao('Item #3', "Subtitle 3"),
                Anotacao('Item #4', "Subtitle 4"),
                Anotacao('Item #5', "Subtitle 5"),
                Anotacao('Item #6', "Subtitle 6"),
                Anotacao('Item #7', "Subtitle 7"),
              ],
            ),
          ),
        ),
        floatingActionButton: Align(
            alignment: Alignment.bottomCenter,
            child:
                FloatingActionButton(onPressed: () {}, child: Icon(Icons.add))),
      ),
    );
  }
}

class Anotacao extends StatefulWidget {
  final String title;
  final String desc;

  const Anotacao(this.title, this.desc, {super.key});

  @override
  State<Anotacao> createState() => _AnotacaoState();
}

class _AnotacaoState extends State<Anotacao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 248, 250, 1), // Fundo cinza
          borderRadius: BorderRadius.circular(3), // Borda arredondada
        ),
        child: ListTile(
          title: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold), // Título em negrito
          ),
          subtitle: Text(widget.desc), // Subtítulo
          trailing: Icon(Icons.arrow_forward_ios), // Ícone de seta à direita
        ),
      ),
    );
  }
}
