import 'package:aula_923/domain/pacote_turistico.dart';
import 'package:aula_923/pages/detalhes_pacote.dart';
import 'package:flutter/material.dart';

class CardPacoteTuristico extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const CardPacoteTuristico({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _CardPacoteTuristicoState createState() => _CardPacoteTuristicoState();
}

class _CardPacoteTuristicoState extends State<CardPacoteTuristico> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PacoteDetalhes(
                pacoteTuristico: widget.pacoteTuristico,
              );
            },
          ),
        );
      },
      child: Card(
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
                    widget.pacoteTuristico.titulo,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(widget.pacoteTuristico.transporte),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.wb_sunny_outlined),
                      const SizedBox(width: 4),
                      Text('${widget.pacoteTuristico.numDiarias} Diárias'),
                      const SizedBox(width: 8),
                      const Icon(Icons.person_outline),
                      const SizedBox(width: 4),
                      Text('${widget.pacoteTuristico.numPessoas} Pessoa'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('A partir de R\$ ${widget.pacoteTuristico.precoAntigo}'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'R\$ ${widget.pacoteTuristico.precoAtual}',
                        style: const TextStyle(
                          fontSize: 28,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                          'Taxa Grátis em até ${widget.pacoteTuristico.numParcelas}x'),
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
          child: Image.network(widget.pacoteTuristico.imagem),
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
              borderRadius: BorderRadius.all(Radius.circular(16))),
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
