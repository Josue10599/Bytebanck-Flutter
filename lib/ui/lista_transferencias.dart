import 'package:ByteBank/model/transferencia.dart';
import 'package:ByteBank/ui/formulario_transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaTransferencias extends StatelessWidget {
  final List<Transferencia> _transferencias = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: ListaDeTransacoes(_transferencias),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia> transaferencia =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TelaFormularioTransferencia();
          }));
          transaferencia.then((transaferenciaRecebida) {
            if (transaferenciaRecebida != null) {
              _transferencias.add(transaferenciaRecebida);
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListaDeTransacoes extends StatefulWidget {
  final List<Transferencia> _transferencias;

  ListaDeTransacoes(this._transferencias);

  @override
  _ListaDeTransacoesState createState() => _ListaDeTransacoesState();
}

class _ListaDeTransacoesState extends State<ListaDeTransacoes> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: widget._transferencias.length,
      itemBuilder: (context, index) => ItemTransferencia(widget._transferencias[index]),
    );
  }

  Widget ItemTransferencia(Transferencia transferencia) =>
      Card(
        child: ListTile(
          leading: Icon(
            Icons.monetization_on,
            color: Colors.green,
            size: 32.0,
          ),
          title: Text(
            "R\$ ${transferencia.valor.toStringAsFixed(2)}",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
            ),
          ),
          subtitle: Text(
            "Número da Conta: ${transferencia.numeroConta}",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          onTap: () {},
        ),
      );
}
