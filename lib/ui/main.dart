import 'package:ByteBank/constantes/color.dart' as color;
import 'package:ByteBank/ui/lista_transferencias.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ByteBank",
      theme: ThemeData(
          primaryColor: color.primaryColor,
          accentColor: color.accentColor,
          cursorColor: color.primaryColor,
          buttonTheme: ButtonThemeData(buttonColor: color.primaryColor)),
      home: SafeArea(child: TelaTransferencias()),
    );
  }
}
