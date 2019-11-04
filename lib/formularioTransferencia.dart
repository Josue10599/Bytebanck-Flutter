import 'package:flutter/material.dart';

import 'color.dart';

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: <Widget>[
          campoNumeroDaConta(),
          campoValorTransacao(),
          botaoSalvar(),
        ],
      ),
    );
  }
}

class campoNumeroDaConta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Número da Conta",
        ),
      ),
    );
  }
}

class campoValorTransacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Valor da Transferência",
        ),
      ),
    );
  }
}

class botaoSalvar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: accentColor,
      textColor: Colors.white,
      child: Text("Enviar Transação"),
    );
  }
}
