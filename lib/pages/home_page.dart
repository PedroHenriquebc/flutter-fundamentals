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
  var qtdCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meu app",
          //style: GoogleFonts.pacifico(),  // DEFINE MANUALMENTE O TIPO DA FONTE, TAMANHO, etc.
        ),
      ),
      body: Column( // COLUMN È UTILZADO PARA COLOCAR UM COMPONENTE EMBAIXO DE OUTRO
        mainAxisAlignment: MainAxisAlignment.center, // ALINHAMENTO VERTICAL NO CENTRO
        children: [
          Center(
              child: Text(
            "Foi clicado $qtdCliques vezes",
            style: GoogleFonts.acme(fontSize: 30),
          )),
          Center(
              child: Text(
            "O número gerado foi: $numeroGerado",
            style: GoogleFonts.acme(fontSize: 30),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_box_outlined),
          onPressed: () {
            setState(() {
              qtdCliques = qtdCliques + 1;
              numeroGerado = GeradorNumeroAleatorioService.gerarNumAleatorio(1000);
            });
          }),
    );
  }
}
