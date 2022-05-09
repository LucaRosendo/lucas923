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
      appBar: AppBar(
        centerTitle: false,
        title: Text('Pesquisar'),
        backgroundColor: Color(0xFF10397B),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          color: Colors.purple,
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
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xFFF8FF04)),
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
        )
      ],
    );
  }
}
