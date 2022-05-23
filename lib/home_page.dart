import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Pesquisar'),
        backgroundColor: Color(0xFF10397B),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.purple, borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'TOP DESTINOS MAIS BUSCADOS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Corre que ta rolando muita promoção',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Eu quero',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF8FF04)),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                const Placeholder(
                  fallbackHeight: 150,
                  fallbackWidth: 100,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          buildCard(
            imagem: 'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
            titulo: 'Pacote Cancún 2022/2023',
            transporte: 'Aéreo - Hotel All inclusive',
            numDiarias: 5,
            numPessoas: 2,
            numParcelas: 6,
            precoAntigo: 6819,
            precoAtual: 2819,
          ),
          buildCard(
            imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB5rIrZJE4K5HnZId4Xv_UMUxVj3UBDr3YDRs7N0eeJwLMCVb7JFkwh0DgOOvh2LcfTcI&usqp=CAU',
            titulo: 'Pacote Maragogi 2023',
            transporte: 'Hotel All inclusive',
            numDiarias: 7,
            numPessoas: 3,
            numParcelas: 12,
            precoAntigo: 4819,
            precoAtual: 819,
          ),
        ],
      ),
    );
  }

  buildCard({
    required String imagem,
    required String titulo,
    required String transporte,
    required int numDiarias,
    required int numPessoas,
    required double precoAntigo,
    required double precoAtual,
    required int numParcelas,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(16),
            ),
            child: Image.network(imagem),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(transporte),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.wb_sunny_outlined),
                    const SizedBox(width: 4),
                    Text('$numDiarias Diárias'),
                    const SizedBox(width: 8),
                    const Icon(Icons.person_outline),
                    const SizedBox(width: 4),
                    Text('$numPessoas Pessoa'),
                  ],
                ),
                const SizedBox(height: 8),
                Text('A partir de R\$ $precoAntigo'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'R\$ $precoAtual',
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text('Taxa Grátis em até ${numParcelas}x'),
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
}
