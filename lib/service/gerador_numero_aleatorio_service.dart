import 'dart:math';

class GeradorNumeroAleatorioService {
  static int gerarNumAleatorio(int numMax) {
    Random numAleatorio = Random();
    return numAleatorio.nextInt(numMax);
  }
}