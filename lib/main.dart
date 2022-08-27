import 'package:flutter/material.dart';
import 'screens/transferencias/lista.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green[900],
          secondary: Colors.greenAccent[700],
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
