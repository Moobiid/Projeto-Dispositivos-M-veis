// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore, file_names

import 'package:app_01/projeto/pagNovaSenha.dart';
import 'package:flutter/material.dart';
import 'package:app_01/projeto/pagInicial.dart';

class pagEsqueceuSenha extends StatefulWidget {
  const pagEsqueceuSenha({super.key});

  @override
  State<pagEsqueceuSenha> createState() => _pagEsqueceuSenhaState();
}

TextEditingController emailController = TextEditingController();

class _pagEsqueceuSenhaState extends State<pagEsqueceuSenha> {
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
                      MaterialPageRoute(builder: (context) => PagLogin()));
                },
              ),
              centerTitle: true,
              // ignore: prefer_const_constructors
              title: Text("Recuperar Senha"),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Informe seu e-mail',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'E-mail',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 55,
                      width: 300,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pagNovaSenha()));
                        }, // Perform an action when the button is pressed
                        style: OutlinedButton.styleFrom(
                          //minimumSize: Size(100, 100),
                          fixedSize: Size(300, 40),
                          backgroundColor: Color.fromARGB(255, 102, 102, 102),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          side: const BorderSide(color: Colors.black, width: 2),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                        ),

                        child: const Text(
                          'Confirmar',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 245, 246, 247),
                          ),
                        ),
                      )),
                ],
              ),
            )));
    ;
  }
}
