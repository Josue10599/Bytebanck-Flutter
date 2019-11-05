import 'package:ByteBank/model/transferencia.dart';
import 'package:ByteBank/ui/formulario_transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: ListaDeTransferencias(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia> transaferencia =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TelaFormularioTransferencia();
          }));
          transaferencia.then((transaferenciaRecebida) {
            debugPrint(transaferenciaRecebida.toString());
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListaDeTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(100.0, 2034)),
        ItemTransferencia(Transferencia(120.0, 2554)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  const ItemTransferencia(this._transferencia);

  final Transferencia _transferencia;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text("R\$ ${_transferencia.valor.toStringAsFixed(2)}"),
        subtitle: Text("Número da Conta: ${_transferencia.numeroConta}"),
        onTap: () {},
      ),
    );
  }
}
