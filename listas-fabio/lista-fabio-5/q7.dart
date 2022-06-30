import '../../io_utils.dart';

void main(List<String> args) {
  int tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
  var vetorA = List.generate(tamanho, (index) => getNumber("Insira um numero -> "));
  var vetorB = List.filled(tamanho, 0);

  for (var i = 0; i < tamanho; i++) {
    if(ehPar(vetorA[i])) vetorB[i] = 0;
    else vetorB[i] = 1;
  }

  print("Vetor A: $vetorA");
  print("Vetor B: $vetorB");
  
}
