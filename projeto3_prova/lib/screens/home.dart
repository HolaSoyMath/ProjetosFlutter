import 'package:flutter/material.dart';
import 'package:projeto3_prova/Contato/contato.dart';
import 'package:projeto3_prova/main.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: Text("Projeto 3 da prova - Transferências",
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
              Contato(45000.0, 456),
              Contato(8001.0, 1234),
              Contato(99998.0, 1111)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          foregroundColor: Colors.red,
          backgroundColor: Colors.blue,
          shape: CircleBorder(),
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}