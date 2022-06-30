import '../../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira o numero de N -> ");
  double soma = 0;

  var counter = 1;
  while(counter <= numero){
    soma += 1/counter;
    counter++;
  }
  var somaText = soma.toStringAsFixed(4);
  print("S = $somaText");
}