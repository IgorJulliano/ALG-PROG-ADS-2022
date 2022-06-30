import '../../io_utils.dart';

void main() {

  var tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
  var entrada;
  var vetorA = List.filled(tamanho, 0);
  var vetorB = List.filled(tamanho, 0);
  
  for (var i = 0; i < tamanho; i++) { // 'popular' vetor A
    entrada = getNumber("Insira um número -> ");
    vetorA[i] = entrada;
  }
  
  for (var i = 0; i < tamanho; i++) {
    vetorB[i] = vetorA[tamanho - 1 - i];
  }

  print(vetorA);
  print(vetorB);
  
}