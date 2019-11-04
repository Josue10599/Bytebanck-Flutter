import 'package:alura_bytebank/color.dart';
import 'package:flutter/material.dart';

class TelaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
        backgroundColor: primaryColor,
      ),
      body: ListaDeTransferencias(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: accentColor,
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

class Transferencia {
  Transferencia(this.valor, this.numeroConta);

  final double valor;
  final int numeroConta;
}
