import 'package:ByteBank/components/editor_de_texto.dart';
import 'package:ByteBank/model/transferencia.dart';
import 'package:flutter/material.dart';

class TelaFormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
      ),
      body: SingleChildScrollView(
        child: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatefulWidget {
  @override
  _FormularioTransferenciaState createState() => _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
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
          maxLength: 4,
        ),
        EditorDeTexto(
          controller: _controllerValor,
          icon: Icons.monetization_on,
          labelText: 'Valor da Transacao',
          hintText: '000.00',
        ),
        BotaoSalvar(
          _controllerConta,
          _controllerValor,
        ),
      ],
    );
  }
}

class BotaoSalvar extends StatelessWidget {
  final TextEditingController _controllerConta;
  final TextEditingController _controllerValor;

  BotaoSalvar(
    this._controllerConta,
    this._controllerValor,
  );

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(16),
      child: Text(
        "Enviar Transação",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        realizarTransacao(context);
      },
    );
  }

  void realizarTransacao(BuildContext context) {
    final int numeroDaConta = int.tryParse(_controllerConta.text);
    final double valorTransferencia = double.tryParse(_controllerValor.text);
    if (numeroDaConta != null && valorTransferencia != null) {
      var transferencia = Transferencia(valorTransferencia, numeroDaConta);
      Navigator.pop(context, transferencia);
      debugPrint(transferencia.toString());
    }
  }
}
