import 'package:ByteBank/ui/lista_transferencias.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ByteBank",
      home: SafeArea(child: TelaTransferencias()),
    );
  }
}
