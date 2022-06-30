import '../../../io_utils.dart';

void main(List<String> args) {
  var qtd = getNumber("Quantos numeros -> ");
  num maior = double.negativeInfinity;
  var input;

  var counter = 1;
  while (counter <= qtd) {

    input = getNumber("Insira o $counterº numero -> ");

    maior = input > maior ? input : maior;

    counter++;
  }
  print("Maior: $maior");
}