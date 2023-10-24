// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PagEntrada extends StatefulWidget {
  const PagEntrada({super.key});

  @override
  State<PagEntrada> createState() => _PagEntradaState();
}

//Criando um controlador para que o programa reconheça o que o usuario digitou
TextEditingController controlador = TextEditingController();

class _PagEntradaState extends State<PagEntrada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 102, 102, 102),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Página de Login"),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 300,
            child: TextField(
              controller: controlador,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 233, 233, 233),
                    fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black)),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
        ));
  }
}
