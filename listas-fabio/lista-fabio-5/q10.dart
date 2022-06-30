import '../../io_utils.dart';

void main(List<String> args) {

  var tamanho = getNumber("Insira o tamanho do vetor -> ").toInt();
  var vetorFib = fibonacciNumbers(tamanho);
  print("$vetorFib");
  
}