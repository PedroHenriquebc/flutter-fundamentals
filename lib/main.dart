import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  int _gerarNumAleatorio() {
    Random numAleatorio = Random();
    return numAleatorio.nextInt(1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu app"),
      ),
      body: Center(child: Text(numeroGerado.toString())),
      floatingActionButton: FloatingActionButton (
        child: const Icon(Icons.add_box_outlined),
        onPressed: () {
          setState(() {
            numeroGerado = _gerarNumAleatorio();
          });
        }
      ),
    );
  }
}