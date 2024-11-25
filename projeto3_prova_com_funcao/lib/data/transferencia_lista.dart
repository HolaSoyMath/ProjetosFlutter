import 'package:flutter/material.dart';
import 'package:projeto3_prova/componente/transferencia.dart';

class TransferenciasLista extends InheritedNotifier<ValueNotifier<List<Transferencia>>> {
  TransferenciasLista({
    Key? key,
    required Widget child,
  }) : super(
    key: key,
    notifier: ValueNotifier<List<Transferencia>>([
      Transferencia(45000.0, 456),
      Transferencia(8001.0, 1234),
      Transferencia(99998.0, 1111)
    ]),
    child: child,
  );

  static ValueNotifier<List<Transferencia>> of(BuildContext context) {
    final TransferenciasLista? result = context.dependOnInheritedWidgetOfExactType<TransferenciasLista>();
    assert(result != null, 'Nenhuma TransferenciasLista encontrada no contexto');
    return result!.notifier!;
  }

  void newTransferencia(double valor, int conta) {
    notifier!.value = List.from(notifier!.value)..add(Transferencia(valor, conta));
  }

  @override
  bool updateShouldNotify(TransferenciasLista oldWidget) {
    return oldWidget.notifier!.value != notifier!.value;
  }
}
