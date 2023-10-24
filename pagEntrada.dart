// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PagEntrada extends StatefulWidget {
  const PagEntrada({super.key});

  @override
  State<PagEntrada> createState() => _PagEntradaState();
}

class _PagEntradaState extends State<PagEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 85, 85, 85),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Página de Login"),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
