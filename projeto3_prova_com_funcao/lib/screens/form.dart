import 'package:flutter/material.dart';
import 'package:projeto3_prova/componente/transferencia.dart';
import 'package:projeto3_prova/data/transferencia_lista.dart';

class FormTransferencia extends StatefulWidget {
  const FormTransferencia({super.key, required this.transferenciaContext});

  final BuildContext transferenciaContext;

  @override
  State<FormTransferencia> createState() => _FormTransferenciaState();
}

class _FormTransferenciaState extends State<FormTransferencia> {
  TextEditingController valorControler = TextEditingController();
  TextEditingController contaControler = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // Verificar se o valor é nulo
  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Nova transferência'),
        ),
        body: Center(
          child: Container(
            height: 650,
            width: 375,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Valor da transferência (Double)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (String? value) {
                      if (valueValidator(value)) {
                        return 'Insira o valor da transferência';
                      } else if(num.tryParse(value ?? '') == null){
                        return 'Insira um valor válido';
                      }
                      return null;
                    },
                    controller: valorControler,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Valor',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                // Número da conta (Integer)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (valueValidator(value)) {
                        return 'Insira a conta da transferência';
                      } else if(num.tryParse(value ?? '') == null){
                        return 'Insira um valor válido';
                      }
                      return null;
                    },
                    controller: contaControler,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Conta',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Adicionar a nova transferência
                        TransferenciasLista.of(widget.transferenciaContext).value.add(
                          Transferencia(
                            double.parse(valorControler.text),
                            int.parse(contaControler.text),
                          ),
                        );
                        // Notificar os ouvintes sobre a mudança
                        TransferenciasLista.of(widget.transferenciaContext).notifyListeners();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Nova transferência adicionada!')),
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Adicionar')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
