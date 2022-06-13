import 'package:aula_923/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Text(
                pacote.cidade,
              ),
              const SizedBox(height: 8),
              buildText(text: pacote.titulo, fontSize: 21, isBold: true),
              const SizedBox(height: 8),
              buildText(text: pacote.transporte),
              const SizedBox(height: 8),
              buildText(text: '${pacote.numDiarias}'),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildText(text: 'Válido para o periodo: ', isBold: true),
                  buildText(text: 'A partir de: R\$ ${pacote.precoAntigo}'),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: buildText(
                      text: pacote.validade,
                      fontSize: 21,
                      isBold: true,
                    ),
                  ),
                  const SizedBox(width: 24),
                  buildText(
                    text: 'R\$ ${pacote.precoAtual}',
                    fontSize: 36,
                    isBold: true,
                    color: const Color(0xFFFD6C00)
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Text buildText({
    required String text,
    double fontSize = 14,
    bool isBold = false,
    Color color = Colors.black,
  }) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.w600 : null,
      ),
    );
  }
}
