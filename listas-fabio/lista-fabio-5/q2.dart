import '../../io_utils.dart';

void main() {
  int tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
  List vetorA = List.filled(tamanho, 0);
  var contagem;
  var entrada;

  for (var i = 0; i < tamanho; i++) { // 'popular' vetor A
    entrada = getNumber("Insira um número -> ");
    vetorA[i] = entrada;
  }


  for (var i = 0; i < tamanho; i++) {
    contagem = vetorA.contarQtdElementos(vetorA[i]);
    if (contagem > 1) {
      print("Há $contagem '${vetorA[i]}' no vetor A!");
    }
  }
}



extension vectorUtils on Iterable {
  int contarQtdElementos(Object? element) {
    int counter = 0;

    for (var i = 0; i < this.length; i++) {
      if (this.elementAt(i) == element) counter++;
    }

    return counter;
  }
}
