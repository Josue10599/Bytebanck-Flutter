import 'package:flutter/material.dart';

import 'formularioTransferencia.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ByteBank",
      home: FormularioTransferencia(),
    );
  }
}
