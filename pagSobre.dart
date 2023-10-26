import 'package:flutter/material.dart';

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
            centerTitle: true,
            // ignore: prefer_const_constructors
            title: Text("Sobre"),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
        ));
  }
}
