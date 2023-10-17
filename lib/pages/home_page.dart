import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu app",
          // DEFINE MANUALMENTE O TIPO DA FONTE, TAMANHO, etc.
          //style: GoogleFonts.pacifico(),
        ),
      ),
      body: Center(
          child: Text(
        numeroGerado.toString(),
        // DEFINE MANUALMENTE O TIPO DA FONTE, TAMANHO, etc.
        style: GoogleFonts.acme(fontSize: 30),
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_box_outlined),
          onPressed: () {
            setState(() {
              numeroGerado =
                  GeradorNumeroAleatorioService.gerarNumAleatorio(1000);
            });
          }),
    );
  }
}
