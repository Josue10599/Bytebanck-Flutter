import 'package:flutter/material.dart';

class EditorDeTexto extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final int maxLength;

  const EditorDeTexto({
    Key key,
    this.icon,
    this.controller,
    this.labelText,
    this.hintText,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0,
      ),
      child: TextField(
        textInputAction: TextInputAction.done,
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
