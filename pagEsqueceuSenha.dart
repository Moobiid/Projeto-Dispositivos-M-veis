// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore, file_names

import 'package:flutter/material.dart';

class pagEsqueceuSenha extends StatefulWidget {
  const pagEsqueceuSenha({super.key});

  @override
  State<pagEsqueceuSenha> createState() => _pagEsqueceuSenhaState();
}

class _pagEsqueceuSenhaState extends State<pagEsqueceuSenha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 102, 102, 102),
          appBar: AppBar(
            centerTitle: true,
            // ignore: prefer_const_constructors
            title: Text("Recuperar Senha"),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
        ));
    ;
  }
}
