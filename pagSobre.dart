import 'package:flutter/material.dart';
import 'package:app_01/projeto/pagEntrada.dart';

class pagSobre extends StatefulWidget {
  const pagSobre({super.key});

  @override
  State<pagSobre> createState() => _pagSobreState();
}

class _pagSobreState extends State<pagSobre> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 102, 102, 102),
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => PagEntrada()));
              },
            ),
            centerTitle: true,
            // ignore: prefer_const_constructors
            title: Text("Sobre"),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tema: Desenvolver um aplicativo de venda de Tênis',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Objetivo: Fazer com que o usuário veja os produtos disponiveis e escolha comprar ou não',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Desenvolvedor: João Victor Mobiglia Podenciano',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }
}
