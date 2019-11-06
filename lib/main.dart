import 'package:ByteBank/constantes/color.dart' as color;
import 'package:flutter/material.dart';

import 'screens/lista_transferencias.dart';

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
        buttonTheme: ButtonThemeData(
          buttonColor: color.accentColor,
        ),
      ),
      home: TelaTransferencias(),
    );
  }
}
