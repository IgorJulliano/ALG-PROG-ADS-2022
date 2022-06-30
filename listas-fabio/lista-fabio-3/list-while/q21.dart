import '../../../io_utils.dart';

void main(List<String> args) {
  var numero = getNumber("Insira o numero de N -> ");
  num soma = 0;

  var counter = 0;
  while (counter < numero) {

    soma += (1 + (counter * 2)) / (counter + 1);

    counter++;
  }
  var somaText = soma.toStringAsFixed(4);
  print("S = $somaText");
}
