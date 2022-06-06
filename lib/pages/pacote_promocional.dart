import 'package:flutter/material.dart';

class PacotePromocional extends StatefulWidget {
  const PacotePromocional({Key? key}) : super(key: key);

  @override
  _PacotePromocionalState createState() => _PacotePromocionalState();
}

class _PacotePromocionalState extends State<PacotePromocional> {
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
