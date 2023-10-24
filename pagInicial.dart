// ignore_for_file: prefer_const_constructors

import 'package:app_01/projeto/pagEntrada.dart';
import 'package:flutter/material.dart';

class PagLogin extends StatelessWidget {
  const PagLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 85, 85, 85),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Projeto Aula"),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PagEntrada()));
            },

            // Perform an action when the button is pressed
            style: OutlinedButton.styleFrom(
              minimumSize: Size(200, 50),
              fixedSize: Size(200, 50),
              backgroundColor: const Color.fromARGB(255, 90, 90, 90),
              side: const BorderSide(
                  color: Color.fromARGB(255, 134, 134, 134), width: 2),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),

            child: const Text(
              'Start',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 246, 247),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
