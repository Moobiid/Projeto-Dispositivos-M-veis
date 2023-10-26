// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';

class pagCadastro extends StatefulWidget {
  const pagCadastro({super.key});

  @override
  State<pagCadastro> createState() => _pagCadastroState();
}

class _pagCadastroState extends State<pagCadastro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 102, 102, 102),
          appBar: AppBar(
            centerTitle: true,
            // ignore: prefer_const_constructors
            title: Text("Cadastre-se"),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
        ));
  }
}
