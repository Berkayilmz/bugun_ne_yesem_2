import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          foregroundColor: Colors.black,
          centerTitle: true,
          title: Text('Bu Gün Ne Yesem?'),
        ),
        body: YemekSayfasi(),
        backgroundColor: Colors.brown[100],
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;
  List<String> corbaIsim = [
    'Mercimek Çorbası',
    'Domates Çorbası',
    'Tavuk Çorbası',
    'Mantar Çorbası',
    'Yayla Çorbası',
  ];

  List<String> yemekIsim = [
    'İmambayıldı',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Balık',
  ];

  List<String> tatliIsim = [
    'Tel Kadayıf',
    'Baklava',
    'Fırın Sütlaç',
    'Kazandibi',
    'Dondurma',
  ];
  void rndSayi() {
    corbaNo = Random().nextInt(5) + 1;
    tatliNo = Random().nextInt(5) + 1;
    yemekNo = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('assets/corba_$corbaNo.jpg'),
                onPressed: () {
                  setState(() {
                    rndSayi();
                  });
                },
              ),
            ),
          ),
          Text(
            corbaIsim[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 275,
            child: Divider(
              height: 5,
              color: Colors.brown,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
                onPressed: () {
                  setState(() {
                    rndSayi();
                  });
                },
              ),
            ),
          ),
          Text(
            yemekIsim[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 275,
            child: Divider(
              height: 5,
              color: Colors.brown,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
                onPressed: () {
                  setState(() {
                    rndSayi();
                  });
                },
              ),
            ),
          ),
          Text(
            tatliIsim[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 275,
            child: Divider(height: 5, color: Colors.brown),
          ),
        ],
      ),
    );
  }
}
