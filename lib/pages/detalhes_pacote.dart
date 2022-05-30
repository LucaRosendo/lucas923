import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  const PacoteDetalhes({Key? key}) : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Página de Detalhes',
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
    );
  }
}
