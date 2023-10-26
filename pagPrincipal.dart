// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:app_01/projeto/pagSobre.dart';
import 'package:flutter/material.dart';

class pagPrincipal extends StatefulWidget {
  const pagPrincipal({super.key});

  @override
  State<pagPrincipal> createState() => _pagPrincipalState();
}

class _pagPrincipalState extends State<pagPrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 102, 102, 102),
            appBar: AppBar(
              centerTitle: true,
              // ignore: prefer_const_constructors
              title: Text("Menu"),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 55,
                    width: 300,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pagSobre()));
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
                        'Sobre',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 245, 246, 247),
                        ),
                      ),
                    )),
              ],
            ))));
  }
}
