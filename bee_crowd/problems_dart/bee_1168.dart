import 'dart:io';

void main(List<String> args) {
  var qtdDeEntradas = int.parse(stdin.readLineSync() ?? "");
  Stopwatch stopW = Stopwatch()..start();
  String numero;
  int qtdSeg = 0;

  var counter = 0;
  while (counter < qtdDeEntradas) {
    stopW.stop();
    numero = stdin.readLineSync() ?? "";
    stopW.start();

    for (var i = 0; i < numero.length; i++) {
      qtdSeg += qtdSegmentos(int.parse(numero[i]));
    }

    print("$qtdSeg leds");

    qtdSeg = 0;
    counter++;
  }

  print("Time: ${stopW.elapsed}");
  
}

int qtdSegmentos(int numero) {
  var qtdSegmento = 0;

  if (numero == 1) {
    qtdSegmento = 2;
  } else if (numero == 7) {
    qtdSegmento = 3;
  } else if (numero == 4) {
    qtdSegmento = 4;
  } else if (numero == 2 || numero == 3 || numero == 5) {
    qtdSegmento = 5;
  } else if (numero == 6 || numero == 9 || numero == 0) {
    qtdSegmento = 6;
  } else if (numero == 8) {
    qtdSegmento = 7;
  }

  return qtdSegmento;
}
