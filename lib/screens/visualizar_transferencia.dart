import 'package:ByteBank/constantes/color.dart';
import 'package:flutter/material.dart';

class TelaTransferencia extends StatelessWidget {
  final String _valor;
  final String _conta;

  TelaTransferencia(this._valor, this._conta);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vizualizando Transação")),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Card(
            color: primaryColor,
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.monetization_on,
                  size: 128,
                  color: Colors.green,
                ),
                apresentaTexto(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget apresentaTexto() => Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _valor,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 64.0,
              ),
            ),
            Text(
              _conta,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white60,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      );
}
