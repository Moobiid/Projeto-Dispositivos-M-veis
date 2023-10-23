// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
            onPressed: () {}, // Perform an action when the button is pressed
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
