import 'package:ByteBank/model/transferencia.dart';
import 'package:ByteBank/screens/visualizar_transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'formulario_transferencia.dart';

class TelaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  _TelaTransferenciasState createState() => _TelaTransferenciasState();
}

class _TelaTransferenciasState extends State<TelaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transferências")),
      body: listaDeTransacoes(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _botaoPressionado(),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget listaDeTransacoes() => ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: widget._transferencias.length,
        itemBuilder: (context, index) => itemTransferencia(widget._transferencias[index]),
      );

  Widget itemTransferencia(Transferencia transferencia) {
    var valorFormatado = "R\$ ${transferencia.valor.toStringAsFixed(2)}";
    var numeroDaConta = "Número da Conta: ${transferencia.numeroConta}";
    return Card(
      elevation: 6,
      child: ListTile(
        leading: Icon(
          Icons.monetization_on,
          color: Colors.green,
          size: 32.0,
        ),
        title: Text(
          valorFormatado,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24.0,
          ),
        ),
        subtitle: Text(
          numeroDaConta,
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TelaTransferencia(valorFormatado, numeroDaConta)),
          );
        },
      ),
    );
  }

  void _botaoPressionado() {
    final Future<Transferencia> _transaferencia = Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaFormularioTransferencia()));
    _transaferencia.then((transaferenciaRecebida) {
      setState(() {
        if (transaferenciaRecebida != null) {
          widget._transferencias.add(transaferenciaRecebida);
        }
      });
    });
  }
}
