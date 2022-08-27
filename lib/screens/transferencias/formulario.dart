import 'package:flutter/material.dart';
import '../../components/editor.dart';
import '../../models/transferencia.dart';

const _tituloAppBar = 'Criando Transferencia';
const _rotuloConta = 'Número Da Conta';
const _dicaConta = '0000';
const _rotuloValor = 'Valor';
const _dicaValor = '0.00';
const _tituloBotao = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoConta,
              rotulo: _rotuloConta,
              dica: _dicaConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloValor,
              dica: _dicaValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text(_tituloBotao),
            )
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? conta = int.tryParse(_controladorCampoConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);

    if ((conta != null) && (valor != null)) {
      final transferenciaCriada = Transferencia(valor, conta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
