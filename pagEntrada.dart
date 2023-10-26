// ignore_for_file: prefer_const_constructors

import 'package:app_01/projeto/pagCadastro.dart';
import 'package:app_01/projeto/pagEsqueceuSenha.dart';
import 'package:app_01/projeto/pagPrincipal.dart';
import 'package:flutter/material.dart';

class PagEntrada extends StatefulWidget {
  const PagEntrada({super.key});

  @override
  State<PagEntrada> createState() => _PagEntradaState();
}

//Criando um controlador para que o programa reconheça o que o usuario digitou
TextEditingController controladorEmail = TextEditingController();
TextEditingController controladorSenha = TextEditingController();
bool _senhaVisivel = false;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Container criado para definir o textfield de e-mail
              Container(
                height: 55,
                width: 300,
                child: TextField(
                  controller: controladorEmail,
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

              Container(
                height: 50,
                width: 300,
                child: TextField(
                  //Fazendo com que a senha se torne visivel de forma dinamica atraves da declarção booleana "!""
                  obscureText: !_senhaVisivel,
                  controller: controladorSenha,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                        color: Color.fromARGB(255, 233, 233, 233),
                        fontWeight: FontWeight.bold),

                    //Criando um botao para mostrar/ocultar a senha
                    suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          //Atualiza o estado da variavel senhaVisivel (true/false)
                          setState(() {
                            _senhaVisivel = !_senhaVisivel;
                          });
                        },
                        icon: Icon(
                          _senhaVisivel
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black26,
                        )),

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

              //Botao Esqueceu a senha

              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pagEsqueceuSenha()));
                  },
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255, 245, 246, 247),
                      fontSize: 12,
                      color: Color.fromARGB(255, 245, 246, 247),
                    ),
                  )),

              SizedBox(
                height: 80,
              ),

              //Botao para entrar para o menu

              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pagPrincipal()));
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                ),

                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 245, 246, 247),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Text('Não possui uma conta?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 245, 246, 247),
                  )),

              SizedBox(
                height: 15,
              ),

              OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pagCadastro()));
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                ),

                child: const Text(
                  'Inscreva-se',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 245, 246, 247),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
