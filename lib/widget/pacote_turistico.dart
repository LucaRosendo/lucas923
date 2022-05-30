import 'package:flutter/material.dart';

class PacoteTuristico extends StatefulWidget {
  final String imagem;
  final String titulo;
  final int numDiarias;
  final int numPessoas;
  final int numParcelas;
  final String transporte;
  final double precoAtual;
  final double precoAntigo;

  const PacoteTuristico({
    Key? key,
    required this.imagem,
    required this.titulo,
    required this.transporte,
    required this.numDiarias,
    required this.numParcelas,
    required this.numPessoas,
    required this.precoAntigo,
    required this.precoAtual,
  }) : super(key: key);

  @override
  _PacoteTuristicoState createState() => _PacoteTuristicoState();
}

class _PacoteTuristicoState extends State<PacoteTuristico> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          buildImage(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titulo,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(widget.transporte),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.wb_sunny_outlined),
                    const SizedBox(width: 4),
                    Text('${widget.numDiarias} Diárias'),
                    const SizedBox(width: 8),
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 4),
                    Text('${widget.numPessoas} Pessoa'),
                  ],
                ),
                const SizedBox(height: 8),
                Text('A partir de R\$ ${widget.precoAntigo}'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'R\$ ${widget.precoAtual}',
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text('Taxa Grátis em até ${widget.numParcelas}x'),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Cancelamento Grátis',
                  style: TextStyle(
                      color: Colors.green[700], fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          child: Image.network(widget.imagem),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, top: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: const BoxDecoration(
            color: Color(
              0xFFFD6C00,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16))
          ),
          child: const Text(
            '-45\%',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
