// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:app_01/projeto/pagPrincipal.dart';
import 'package:app_01/projeto/pagInicial.dart';

class pagCadastro extends StatefulWidget {
  const pagCadastro({super.key});

  @override
  State<pagCadastro> createState() => _pagCadastroState();
}

//Criando variaveis capazes de armazenar o que o usuario digitou

TextEditingController nomeController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController senhaController = TextEditingController();
TextEditingController telefoneController = TextEditingController();

class _pagCadastroState extends State<pagCadastro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 102, 102, 102),
            appBar: AppBar(
              centerTitle: true,
              leading: BackButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => PagLogin()));
                },
              ),
              title: Text("Cadastre-se"),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Cadastre-se!',
                      style: TextStyle(
                        fontSize: 54,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: TextField(
                      controller: nomeController,
                      decoration: InputDecoration(
                        hintText: 'Insira o nome completo',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Nome',
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
                    child: TextField(
                      controller: telefoneController,
                      decoration: InputDecoration(
                        hintText: 'Insira o telefone',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Telefone',
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
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Insira o e-mail',
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
                    child: TextField(
                      controller: senhaController,
                      decoration: InputDecoration(
                        hintText: 'Informe a senha',
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Senha',
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
                    height: 50,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pagPrincipal()));
                    },

                    // Perform an action when the button is pressed
                    style: OutlinedButton.styleFrom(
                      //minimumSize: Size(100, 100),
                      fixedSize: Size(300, 40),
                      backgroundColor: Color.fromARGB(255, 102, 102, 102),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      side: const BorderSide(color: Colors.black, width: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                    ),

                    child: const Text(
                      'Confirmar',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 245, 246, 247),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
