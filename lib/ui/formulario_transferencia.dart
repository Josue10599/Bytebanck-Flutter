import 'package:ByteBank/model/transferencia.dart';
import 'package:flutter/material.dart';

import '../constantes/color.dart';

class TelaFormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
        backgroundColor: primaryColor,
      ),
      body: FormularioTransferencia(),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        EditorDeTexto(
          controller: _controllerConta,
          icon: Icons.business,
          labelText: 'Número da Conta',
          hintText: '0000',
          maxLength: 11,
        ),
        EditorDeTexto(
          controller: _controllerValor,
          icon: Icons.monetization_on,
          labelText: 'Valor da Transacao',
          hintText: '000.00',
        ),
        BotaoSalvar(_controllerConta, _controllerValor),
      ],
    );
  }
}

class EditorDeTexto extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final int maxLength;

  const EditorDeTexto(
      {Key key, this.icon, this.controller, this.labelText, this.hintText, this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: TextField(
        maxLength: maxLength != null ? maxLength : null,
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon) : null,
          border: OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}

class BotaoSalvar extends StatelessWidget {
  final TextEditingController _controllerConta;
  final TextEditingController _controllerValor;

  BotaoSalvar(this._controllerConta, this._controllerValor);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(16),
      color: primaryColor,
      child: Text(
        "Enviar Transação",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        realizarTransacao();
      },
    );
  }

  void realizarTransacao() {
    final int numeroDaConta = int.tryParse(_controllerConta.text);
    final double valorTransferencia = double.tryParse(_controllerValor.text);
    if (numeroDaConta != null && valorTransferencia != null) {
      var transferencia = Transferencia(valorTransferencia, numeroDaConta);
      debugPrint(transferencia.toString());
    }
  }
}
