import '../../io_utils.dart';

void main(List<String> args) {

  var tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
  var vetorA = List.generate(tamanho, (index) => getNumber("Insira um numero -> "));

  var vetorOrdenado = bubbleSort(vetorA);
  
  print("vetor ordenado: $vetorOrdenado");
  
}