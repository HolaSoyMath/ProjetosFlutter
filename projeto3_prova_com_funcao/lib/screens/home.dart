import 'package:flutter/material.dart';
import 'package:projeto3_prova/data/transferencia_lista.dart';
import 'package:projeto3_prova/screens/form.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final listaTransferencias = TransferenciasLista.of(context).value;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: Text("Projeto 3 da prova - Transferências (Com função)",
                style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      body: ListView(
        children: listaTransferencias.map((transferencia) {
          return transferencia.build(context);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) =>
                  FormTransferencia(transferenciaContext: context),
            ),
          );
        },
        foregroundColor: Colors.red,
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
