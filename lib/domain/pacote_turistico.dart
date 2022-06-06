class PacoteTuristico {
  final String imagem;
  final String titulo;
  final int numDiarias;
  final int numPessoas;
  final int numParcelas;
  final String transporte;
  final String validade;
  final String cidade;
  final double desconto;
  final double precoAtual;
  final double precoAntigo;

  PacoteTuristico({
    required this.validade,
    required this.cidade,
    required this.imagem,
    required this.titulo,
    required this.numDiarias,
    required this.numPessoas,
    required this.numParcelas,
    required this.transporte,
    required this.desconto,
    required this.precoAtual,
    required this.precoAntigo,
  });
}
