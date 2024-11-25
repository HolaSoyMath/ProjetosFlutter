import 'package:flutter/material.dart';

class Transferencia extends StatelessWidget{
  final double valor;
  final int conta;

  const Transferencia(this.valor, this.conta, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(234, 234, 234, 1),
                  width: 3,
                ))), // Fundo branco
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              height: 25,
              width: 50,
              child: const Center(
                child: Icon(Icons.add_circle),
              ),
            ),
          ),
          title: Text(
            valor.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold), // Título em negrito
          ),
          subtitle: Text(conta.toString()), // Subtítulo
        ),
      ),
    );
  }
}