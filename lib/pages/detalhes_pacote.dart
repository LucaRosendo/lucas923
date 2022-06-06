import 'package:aula_923/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const PacoteDetalhes({Key? key, required this.pacoteTuristico})
      : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {
  PacoteTuristico get pacote => widget.pacoteTuristico;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        Image.network(pacote.imagem),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pacote.cidade),
              const SizedBox(height: 16),
              Text(pacote.titulo),
              const SizedBox(height: 16),
              Text(pacote.transporte),
              const SizedBox(height: 16),
              Text('${pacote.numDiarias}'),
              const SizedBox(height: 16),
              Text(pacote.validade),
            ],
          ),
        ),
      ],
    );
  }
}
